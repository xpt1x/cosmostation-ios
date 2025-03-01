//
//  VoteListViewController.swift
//  Cosmostation
//
//  Created by yongjoo on 05/03/2019.
//  Copyright © 2019 wannabit. All rights reserved.
//

import UIKit
import Alamofire
import SafariServices
import GRPC
import NIO

class VoteListViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var voteTitle: UILabel!
    @IBOutlet weak var voteTableView: UITableView!
    @IBOutlet weak var emptyLabel: UILabel!
    @IBOutlet weak var btnShowAll: UIButton!
    @IBOutlet weak var loadingImg: LoadingImageView!
    @IBOutlet weak var layerMultiVote: UIView!
    @IBOutlet weak var layerMultiVoteAction: UIStackView!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnMultiVote: UIButton!
    
    var refresher: UIRefreshControl!
    var mVotingPeriods = Array<MintscanV1Proposal>()
    var mEtcPeriods = Array<MintscanV1Proposal>()
    var mFilteredProposals = Array<MintscanV1Proposal>()
    var mFilteredEtcProposals = Array<MintscanV1Proposal>()
    var mCheckedPeriods = Array<MintscanV1Proposal>()
    var mMyVotes = Array<MintscanMyVotes>()
    var mSelectedProposalIds = Array<UInt64>()
    var mToVoteList = Array<MintscanProposalDetail>()
    
    var mFetchCnt = 0
    var isSelectMode = false;
    var isShowAll = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.account = BaseData.instance.selectAccountById(id: BaseData.instance.getRecentAccountId())
        self.chainType = ChainFactory.getChainType(account!.account_base_chain)
        self.chainConfig = ChainFactory.getChainConfig(chainType)
        
        self.voteTitle.text = NSLocalizedString("title_vote_list", comment: "")
        
        self.voteTableView.delegate = self
        self.voteTableView.dataSource = self
        self.voteTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.voteTableView.register(UINib(nibName: "ProposalVotingPeriodCell", bundle: nil), forCellReuseIdentifier: "ProposalVotingPeriodCell")
        self.voteTableView.register(UINib(nibName: "ProposalEtcPeriodCell", bundle: nil), forCellReuseIdentifier: "ProposalEtcPeriodCell")
        self.voteTableView.rowHeight = UITableView.automaticDimension
        self.voteTableView.estimatedRowHeight = UITableView.automaticDimension
        
        self.refresher = UIRefreshControl()
        self.refresher.addTarget(self, action: #selector(onFetchProposals), for: .valueChanged)
        self.refresher.tintColor = UIColor.font05
        self.voteTableView.addSubview(refresher)
        
        self.btnCancel.setTitle(NSLocalizedString("str_cancel", comment: ""), for: .normal)
        self.btnNext.setTitle(NSLocalizedString("str_next", comment: ""), for: .normal)
        self.btnMultiVote.setTitle(NSLocalizedString("str_multi_vote", comment: ""), for: .normal)
        
        self.loadingImg.onStartAnimation()
        self.onFetchProposals()
    }
    
    @objc func onFetchProposals() {
        if (mFetchCnt > 0 ) { return }
        
        self.mFetchCnt = 2
        self.onFetchMintscanProposals()
        self.onFetchMintscanMyVotes()
    }
    
    func onFetchFinished() {
        self.mFetchCnt = self.mFetchCnt - 1
        if (mFetchCnt <= 0) {
            onUpdateViews()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        self.navigationController?.navigationBar.topItem?.title = "";
    }
    
    func onUpdateViews() {
        if (isShowAll) {
            btnShowAll.setImage(UIImage(named: "iconCheckBox"), for: .normal)
            mFilteredProposals = mVotingPeriods
            mFilteredEtcProposals = mEtcPeriods
        } else {
            btnShowAll.setImage(UIImage(named: "iconUnCheckedBox"), for: .normal)
            mFilteredProposals = mVotingPeriods.filter() { !$0.isScam() }
            mFilteredEtcProposals = mEtcPeriods.filter() { !$0.isScam() }
        }
        
        if (mFilteredProposals.count > 1) {
            self.layerMultiVote.isHidden = false
        } else {
            self.layerMultiVote.isHidden = true
        }
        
        
        if (isSelectMode) {
            btnMultiVote.isHidden = true
            layerMultiVoteAction.isHidden = false

        } else {
            btnMultiVote.isHidden = false
            layerMultiVoteAction.isHidden = true
        }

        self.sortProposals()
        if (mFilteredProposals.count > 0 || mEtcPeriods.count > 0) {
            self.emptyLabel.isHidden = true
            self.voteTableView.reloadData()
        } else {
            self.emptyLabel.isHidden = false
        }
        self.refresher.endRefreshing()
        self.loadingImg.onStopAnimation()
        self.loadingImg.isHidden = true
    }
    
    @IBAction func onClickBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onClickShowAll(_ sender: UIButton) {
        isShowAll = !isShowAll
        self.onUpdateViews()
    }
    
    @IBAction func onClickStartSelect(_ sender: UIButton) {
        isSelectMode = true
        onUpdateViews()
    }
    
    @IBAction func onClickCancel(_ sender: UIButton) {
        mSelectedProposalIds.removeAll()
        isSelectMode = false
        onUpdateViews()
    }
    
    @IBAction func onClickNext(_ sender: UIButton) {
        if (!account!.account_has_private) {
            self.onShowAddMenomicDialog()
            return
        }
        if (mSelectedProposalIds.count <= 0) {
            self.onShowToast(NSLocalizedString("error_no_selected_proposal", comment: ""))
            return
        }
        if (BaseData.instance.mMyDelegations_gRPC.count <= 0) {
            self.onShowToast(NSLocalizedString("error_no_bonding_no_vote", comment: ""))
            return
        }
        if (!BaseData.instance.isTxFeePayable(chainConfig)) {
            self.onShowToast(NSLocalizedString("error_not_enough_fee", comment: ""))
            return
        }
        
        mToVoteList.removeAll()
        showWaittingAlert()
        mSelectedProposalIds.forEach { toVote in
            onFetchMintscanProposalDetail(toVote)
        }
    }
    
    func onStartVote() {
        mSelectedProposalIds.removeAll()
        isSelectMode = false
        voteTableView.reloadData()
        btnMultiVote.isHidden = false
        layerMultiVoteAction.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(600), execute: {
            let txVC = UIStoryboard(name: "GenTx", bundle: nil).instantiateViewController(withIdentifier: "TransactionViewController") as! TransactionViewController
            txVC.mProposals = self.mToVoteList
            txVC.mType = TASK_TYPE_VOTE
            self.navigationItem.title = ""
            self.navigationController?.pushViewController(txVC, animated: true)
        })
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if (isSelectMode) {
            return 1
        }
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = CommonHeader(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        if (section == 0) {
            view.headerTitleLabel.text = NSLocalizedString("str_voting_period", comment: "")
            view.headerCntLabel.text = String(mFilteredProposals.count)
        } else if (section == 1) {
            view.headerTitleLabel.text = NSLocalizedString("str_vote_proposals", comment: "")
            view.headerCntLabel.text = String(mFilteredEtcProposals.count)
        }
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section == 0 && mFilteredProposals.count <= 0) { return 0 }
        if (section == 1 && mFilteredEtcProposals.count <= 0) { return 0 }
        return 30
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) { return mFilteredProposals.count }
        else if (section == 1) { return mFilteredEtcProposals.count }
        else { return 0 }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.section == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier:"ProposalVotingPeriodCell") as? ProposalVotingPeriodCell
            let proposal = mFilteredProposals[indexPath.row]
            cell?.onBindView(chainConfig, proposal, mMyVotes, isSelectMode, mSelectedProposalIds)
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier:"ProposalEtcPeriodCell") as? ProposalEtcPeriodCell
            let proposal = mFilteredEtcProposals[indexPath.row]
            cell?.onBindView(chainConfig, proposal, mMyVotes)
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (isSelectMode) {
            if (indexPath.section == 0) {
                let proposal = mFilteredProposals[indexPath.row]
                if (self.mSelectedProposalIds.contains(proposal.id!)) {
                    if let index = self.mSelectedProposalIds.firstIndex(of: proposal.id!) {
                        self.mSelectedProposalIds.remove(at: index)
                    }
                } else {
                    self.mSelectedProposalIds.append(proposal.id!)
                }
                self.voteTableView.reloadRows(at: [indexPath], with: .none)
            }

        } else {
            if (indexPath.section == 0) {
                let voteDetailVC = VoteDetailsViewController(nibName: "VoteDetailsViewController", bundle: nil)
                voteDetailVC.proposalId = mFilteredProposals[indexPath.row].id!
                self.navigationItem.title = ""
                self.navigationController?.pushViewController(voteDetailVC, animated: true)
                
            } else {
                let proposal = mFilteredEtcProposals[indexPath.row]
                onExplorerLink(proposal.id!)
            }
        }
    }
    
    func onExplorerLink(_ proposalId: UInt64) {
        let link = WUtils.getProposalExplorer(chainConfig, proposalId)
        guard let url = URL(string: link) else { return }
        self.onShowSafariWeb(url)
    }
    
    func onFetchMintscanProposals() {
        let url = BaseNetWork.mintscanProposals(self.chainConfig!)
        let request = Alamofire.request(url, method: .get, parameters: [:], encoding: URLEncoding.default, headers: [:])
        request.responseJSON { (response) in
            switch response.result {
            case .success(let res):
                self.mVotingPeriods.removeAll()
                self.mEtcPeriods.removeAll()
                self.mFilteredProposals.removeAll()
                self.mFilteredEtcProposals.removeAll()
                if let responseDatas = res as? Array<NSDictionary> {
                    responseDatas.forEach { rawProposal in
                        let tempProposal = MintscanV1Proposal.init(rawProposal)
                        if (tempProposal.isVotingPeriod()) {
                            self.mVotingPeriods.append(tempProposal)
                        } else {
                            self.mEtcPeriods.append(tempProposal)
                        }
                    }
                }
            case .failure(let error):
                print("onFetchMintscanProposal ", error)
            }
            self.onFetchFinished()
        }
    }
    
    func onFetchMintscanMyVotes() {
        let url = BaseNetWork.mintscanMyVotes(self.chainConfig!, self.account!.account_address)
        let request = Alamofire.request(url, method: .get, parameters: [:], encoding: URLEncoding.default, headers: [:])
        request.responseJSON { (response) in
            switch response.result {
            case .success(let res):
                self.mMyVotes.removeAll()
                if let responseDatas = res as? NSDictionary,
                    let rawVotes = responseDatas.object(forKey: "votes") as? Array<NSDictionary> {
                    rawVotes.forEach { rawVote in
                        self.mMyVotes.append(MintscanMyVotes.init(rawVote))
                    }
                }
                
            case .failure(let error):
                print("onFetchMintscanMyVotes ", error)
            }
            self.onFetchFinished()
        }
    }
    
    func onFetchMintscanProposalDetail(_ id: UInt64) {
        let url = BaseNetWork.mintscanProposalDetail(chainConfig!, id)
        let request = Alamofire.request(url, method: .get, parameters: [:], encoding: URLEncoding.default, headers: [:])
        request.responseJSON { (response) in
            switch response.result {
            case .success(let res):
                if let responseData = res as? NSDictionary {
                    self.mToVoteList.append(MintscanProposalDetail.init(responseData))
                }
                if (self.mToVoteList.count == self.mSelectedProposalIds.count) {
                    self.hideWaittingAlert()
                    self.onStartVote()
                }
                
            case .failure(let error):
                print("onFetchMintscanProposalDetail ", error)
            }
        }
    }
    
    func sortProposals() {
        self.mFilteredProposals.sort {
            return $0.id! < $1.id! ? false : true
        }
        self.mEtcPeriods.sort {
            return $0.id! < $1.id! ? false : true
        }
        self.mCheckedPeriods.sort {
            return $0.id! < $1.id! ? false : true
        }
    }

}
