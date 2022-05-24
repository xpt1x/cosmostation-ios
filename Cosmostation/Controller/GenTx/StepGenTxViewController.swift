//
//  StepGenTxViewController.swift
//  Cosmostation
//
//  Created by yongjoo on 08/04/2019.
//  Copyright © 2019 wannabit. All rights reserved.
//

import UIKit
import Alamofire
import GRPC
import NIO
import HDWalletKit
import SwiftKeychainWrapper

class StepGenTxViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource, UIScrollViewDelegate {
    
    fileprivate var currentIndex = 0
    var disableBounce = false
    
    var topVC: TransactionViewController!
    var mType: String?
    
    var mAccount: Account?
    var chainType: ChainType?
    var mBalances = Array<Balance>()
    
    var mToSendRecipientAddress:String?
    var mToSendAmount = Array<Coin>()
    
    var mTargetValidator_gRPC: Cosmos_Staking_V1beta1_Validator?
    var mToDelegateAmount: Coin?
    var mToUndelegateAmount:Coin?
    var mRewardAddress: String?
    var mRewardTargetValidators_gRPC = Array<Cosmos_Staking_V1beta1_Validator>()
    
    var mToReDelegateAmount: Coin?
    var mToReDelegateValidator_gRPC: Cosmos_Staking_V1beta1_Validator?
    var mToReDelegateValidators_gRPC = Array<Cosmos_Staking_V1beta1_Validator>()
    
    var mCurrentRewardAddress: String?
    var mToChangeRewardAddress: String?
    
    var mReinvestReward: Coin?
    
    var mMemo: String?
    var mFee: Fee?
    
    var mCollateral = Coin.init()
    var mPrincipal = Coin.init()
    var mPayment = Coin.init()
    var mSender: String?
    
    var currentPrice: NSDecimalNumber?
    var liquidationPrice: NSDecimalNumber?
    var riskRate: NSDecimalNumber?
    var beforeLiquidationPrice: NSDecimalNumber?
    var afterLiquidationPrice: NSDecimalNumber?
    var beforeRiskRate: NSDecimalNumber?
    var afterRiskRate: NSDecimalNumber?
    var totalDepositAmount: NSDecimalNumber?
    var totalLoanAmount: NSDecimalNumber?
    
    var mBnbToken: BnbToken?
    
    var mProposeId: String?
    var mProposalTitle: String?
    var mProposer: String?
    var mVoteOpinion: String?
    
    var mCollateralParamType: String?
    var mCDenom: String?
    var mPDenom: String?
    var mMarketID: String?
    var mCollateralParam: CollateralParam?
    var mIncentiveKavaReceivable = NSDecimalNumber.zero
    var mIncentiveHardReceivable = NSDecimalNumber.zero
    var mHardMoneyMarketDenom: String?
    var mHardPoolCoins: Array<Coin>?
    var mIncentiveMultiplier: String?
    var mHardPoolCoin = Coin.init()
    var mKavaShareAmount = NSDecimalNumber.zero
    var mKavaCollateralParam: Kava_Cdp_V1beta1_CollateralParam?
    var mKavaSwapPool: Kava_Swap_V1beta1_PoolResponse?
    var mKavaSwapPoolDeposit: Kava_Swap_V1beta1_DepositResponse?
    
    
    var mHtlcDenom: String?
    var mHtlcToChain: ChainType?
    var mHtlcToAccount: Account?
    var mHtlcSendFee: Fee?
    var mHtlcClaimFee: Fee?
    var mKavaSwapParam2: KavaSwapParam2?
    var mKavaSwapSupply2: KavaSwapSupply2?
    
    
    var mHtlcRefundSwapId: String?
    var mBnbSwapInfo: BnbSwapInfo?
    var mKavaSwapInfo: KavaSwapInfo?
    var mSwapRemainCap: NSDecimalNumber = NSDecimalNumber.zero
    var mSwapMaxOnce: NSDecimalNumber = NSDecimalNumber.zero
    
    var mOkToStaking = Coin.init()
    var mOkToWithdraw = Coin.init()
    var mOkVoteValidators: Array<String> = Array<String>()
    
    var mStarnameDomain: String?
    var mStarnameAccount: String?
    var mStarnameTime: Int64?
    var mStarnameDomainType: String?
    var mStarnameResources_gRPC: Array<Starnamed_X_Starname_V1beta1_Resource> = Array<Starnamed_X_Starname_V1beta1_Resource>()
    
    var mToSendDenom: String?
    
    var mPoolId: String?
    var mSwapInDenom: String?
    var mSwapOutDenom: String?
    var mSwapInAmount: NSDecimalNumber?
    var mSwapOutAmount: NSDecimalNumber?
    var mPool: Osmosis_Gamm_Balancer_V1beta1_Pool?
    var mPoolCoin0: Coin?
    var mPoolCoin1: Coin?
    var mLPCoin: Coin?
    var mLockupDuration: Int64?
    var mLockups: Array<Osmosis_Lockup_PeriodLock>?
    
    
    var mGDexPool: Tendermint_Liquidity_V1beta1_Pool?
    var mGDexPoolManager: GDexManager!
    var mGDexPoolSupply: Coin!
    var mGDexSwapOrderPrice: NSDecimalNumber?
    
    
    var mSifPool: Sifnode_Clp_V1_Pool?
    var mSifMyAllUnitAmount: String?
    var mSifMyWithdrawUnitAmount: String?
    
    var mHdacKey: HDWalletKit.PrivateKey?
    var mHdacAddress: String?
    var mHdacBalance: NSDecimalNumber?
    var mHdacUTXOs: Array<HdacUtxo>?
    
    var mIBCSendDenom: String?
    var mIBCSendAmount: String?
    var mIBCRecipient: String?
    var mIBCSendRelayer: IbcPath?
    var mIBCSendPath: Path?
    var mCw20SendContract: String?
    
    var mNFTHash: String?
    var mNFTName: String?
    var mNFTDescription: String?
    var mNFTDenomId: String?
    var mNFTDenomName: String?
    var mNFTTokenId: String?
    var irisResponse: Irismod_Nft_QueryNFTResponse?
    var croResponse: Chainmain_Nft_V1_QueryNFTResponse?
    
    var mDesmosDtag: String?
    var mDesmosNickName: String?
    var mDesmosBio: String?
    var mDesmosCoverHash: String?
    var mDesmosProfileHash: String?
    var mDesmosToLinkChain: ChainType?
    var mDesmosToLinkAccountId: Int64!
    var mDesmosAirDropAmount: String?
    
    
    lazy var orderedViewControllers: [UIViewController] = {
        if (mType == COSMOS_MSG_TYPE_TRANSFER2) {
            if (WUtils.isGRPC(chainType!)) {
                return [self.newVc(viewController: "StepSendAddressViewController"),
                        self.newVc(viewController: "StepSendAmountViewController"),
                        self.newVc(viewController: "StepMemoViewController"),
                        StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                        self.newVc(viewController: "StepSendCheckViewController")]
            } else {
                return [self.newVc(viewController: "StepSendAddressViewController"),
                        self.newVc(viewController: "StepSendAmountViewController"),
                        self.newVc(viewController: "StepMemoViewController"),
                        StepFeeOldViewController(nibName: "StepFeeOldViewController", bundle: nil),
                        self.newVc(viewController: "StepSendCheckViewController")]
            }
            
        } else if (mType == COSMOS_MSG_TYPE_DELEGATE || mType == IRIS_MSG_TYPE_DELEGATE) {
            return [self.newVc(viewController: "StepDelegateAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepDelegateCheckViewController")]
            
        } else if (mType == COSMOS_MSG_TYPE_UNDELEGATE2 || mType == IRIS_MSG_TYPE_UNDELEGATE) {
            return [self.newVc(viewController: "StepUndelegateAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepUndelegateCheckViewController")]
            
        } else if (mType == COSMOS_MSG_TYPE_REDELEGATE2 || mType == IRIS_MSG_TYPE_REDELEGATE) {
            return [self.newVc(viewController: "StepRedelegateAmountViewController"),
                    self.newVc(viewController: "StepRedelegateToViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepRedelegateCheckViewController")]
            
        } else if (mType == COSMOS_MSG_TYPE_WITHDRAW_MIDIFY || mType == IRIS_MSG_TYPE_WITHDRAW_MIDIFY) {
            return [self.newVc(viewController: "StepChangeAddressViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepChangeCheckViewController")]
            
        } else if (mType == COSMOS_MULTI_MSG_TYPE_REINVEST) {
            return [self.newVc(viewController: "ReInvestAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "ReInvestCheckViewController")]
            
        } else if (mType == TASK_TYPE_VOTE) {
            return [self.newVc(viewController: "VoteSelectViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "VoteCheckViewController")]
           
        }
        
        //KAVA
        else if (mType == KAVA_MSG_TYPE_CREATE_CDP) {
            return [self.newVc(viewController: "StepCreateCpdAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepCreateCpdCheckViewController")]
            
        } else if (mType == KAVA_MSG_TYPE_DEPOSIT_CDP) {
            return [self.newVc(viewController: "StepDepositCdpAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepDepositCdpCheckViewController")]
            
        } else if (mType == KAVA_MSG_TYPE_WITHDRAW_CDP) {
            return [self.newVc(viewController: "StepWithdrawCdpAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepWithdrawCdpCheckViewController")]
            
        } else if (mType == KAVA_MSG_TYPE_DRAWDEBT_CDP) {
            return [self.newVc(viewController: "StepDrawDebtCdpAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepDrawDebtCdpCheckViewController")]
            
        } else if (mType == KAVA_MSG_TYPE_REPAYDEBT_CDP) {
            return [self.newVc(viewController: "StepRepayCdpAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    self.newVc(viewController: "StepRepayCdpCheckViewController")]
            
        } else if (mType == TASK_TYPE_HTLC_SWAP) {
            return [self.newVc(viewController: "StepHtlcSend0ViewController"),
                    self.newVc(viewController: "StepHtlcSend1ViewController"),
                    self.newVc(viewController: "StepHtlcSend2ViewController"),
                    self.newVc(viewController: "StepHtlcSend3ViewController")]
            
        } else if (mType == TASK_TYPE_HTLC_REFUND) {
            return [self.newVc(viewController: "StepHtlcRefund0ViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeOldViewController(nibName: "StepFeeOldViewController", bundle: nil),
                    self.newVc(viewController: "StepHtlcRefund3ViewController")]
            
        } else if (mType == KAVA_MSG_TYPE_DEPOSIT_HARD) {
            return [HardPoolDeposit0ViewController(nibName: "HardPoolDeposit0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    HardPoolDeposit3ViewController(nibName: "HardPoolDeposit3ViewController", bundle: nil)]
            
        } else if (mType == KAVA_MSG_TYPE_WITHDRAW_HARD) {
            return [HardPoolWithdraw0ViewController(nibName: "HardPoolWithdraw0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    HardPoolWithdraw3ViewController(nibName: "HardPoolWithdraw3ViewController", bundle: nil)]
            
        } else if (mType == KAVA_MSG_TYPE_BORROW_HARD) {
            return [HardPoolBorrow0ViewController(nibName: "HardPoolBorrow0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    HardPoolBorrow3ViewController(nibName: "HardPoolBorrow3ViewController", bundle: nil)]
            
        } else if (mType == KAVA_MSG_TYPE_REPAY_HARD) {
            return [HardPoolRepay0ViewController(nibName: "HardPoolRepay0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    HardPoolRepay3ViewController(nibName: "HardPoolRepay3ViewController", bundle: nil)]
            
        } else if (mType == KAVA_MSG_TYPE_SWAP_TOKEN) {
            return [KavaSwap0ViewController(nibName: "KavaSwap0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    KavaSwap3ViewController(nibName: "KavaSwap3ViewController", bundle: nil)]
            
        } else if (mType == KAVA_MSG_TYPE_SWAP_DEPOSIT) {
            return [KavaSwapJoin0ViewController(nibName: "KavaSwapJoin0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    KavaSwapJoin3ViewController(nibName: "KavaSwapJoin3ViewController", bundle: nil)]

        } else if (mType == KAVA_MSG_TYPE_SWAP_WITHDRAW) {
            return [KavaSwapExit0ViewController(nibName: "KavaSwapExit0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    KavaSwapExit3ViewController(nibName: "KavaSwapExit3ViewController", bundle: nil)]

        } else if (mType == KAVA_MSG_TYPE_INCENTIVE_ALL) {
            return [KavaIncentiveClaim0ViewController(nibName: "KavaIncentiveClaim0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    KavaIncentiveClaim3ViewController(nibName: "KavaIncentiveClaim3ViewController", bundle: nil)]
        }
        
        //OEC
        else if (mType == OK_MSG_TYPE_DEPOSIT) {
            return [self.newVc(viewController: "StepOkDepositAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeOldViewController(nibName: "StepFeeOldViewController", bundle: nil),
                    self.newVc(viewController: "StepOkDepositCheckViewController")]
            
        } else if (mType == OK_MSG_TYPE_WITHDRAW) {
            return [self.newVc(viewController: "StepOkWithdrawAmountViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeOldViewController(nibName: "StepFeeOldViewController", bundle: nil),
                    self.newVc(viewController: "StepOkWithdrawCheckViewController")]
            
        } else if (mType == OK_MSG_TYPE_DIRECT_VOTE) {
            return [self.newVc(viewController: "StepOkVoteToViewController"),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeOldViewController(nibName: "StepFeeOldViewController", bundle: nil),
                    self.newVc(viewController: "StepOkVoteCheckViewController")]

        }
        
        //STARTNAME
        else if (mType == IOV_MSG_TYPE_REGISTER_DOMAIN) {
            return [RegisterDomain0ViewController(nibName: "RegisterDomain0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    RegisterDomain3ViewController(nibName: "RegisterDomain3ViewController", bundle: nil)]
            
        } else if (mType == IOV_MSG_TYPE_REGISTER_ACCOUNT) {
            return [RegisterAccount0ViewController(nibName: "RegisterAccount0ViewController", bundle: nil),
                    RegisterAccount1ViewController(nibName: "RegisterAccount1ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    RegisterAccount4ViewController(nibName: "RegisterAccount4ViewController", bundle: nil)]

        } else if (mType == IOV_MSG_TYPE_DELETE_DOMAIN || mType == IOV_MSG_TYPE_DELETE_ACCOUNT) {
            return [DeleteStarname0ViewController(nibName: "DeleteStarname0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    DeleteStarname3ViewController(nibName: "DeleteStarname3ViewController", bundle: nil)]

        } else if (mType == IOV_MSG_TYPE_RENEW_DOMAIN || mType == IOV_MSG_TYPE_RENEW_ACCOUNT) {
            return [RenewStarname0ViewController(nibName: "RenewStarname0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    RenewStarname3ViewController(nibName: "RenewStarname3ViewController", bundle: nil)]

        } else if (mType == IOV_MSG_TYPE_REPLACE_ACCOUNT_RESOURCE) {
            return [ReplaceResource0ViewController(nibName: "ReplaceResource0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    ReplaceResource3ViewController(nibName: "ReplaceResource3ViewController", bundle: nil)]

        }
        
        //OSMOSIS
        else if (mType == OSMOSIS_MSG_TYPE_SWAP) {
            return [Swap0ViewController(nibName: "Swap0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    Swap3ViewController(nibName: "Swap3ViewController", bundle: nil)]
            
        } else if (mType == OSMOSIS_MSG_TYPE_JOIN_POOL) {
            return [JoinPool0ViewController(nibName: "JoinPool0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    JoinPool3ViewController(nibName: "JoinPool3ViewController", bundle: nil)]
            
        } else if (mType == OSMOSIS_MSG_TYPE_EXIT_POOL) {
            return [ExitPool0ViewController(nibName: "ExitPool0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    ExitPool3ViewController(nibName: "ExitPool3ViewController", bundle: nil)]
            
        } else if (mType == OSMOSIS_MSG_TYPE_LOCK) {
            return [StartLock0ViewController(nibName: "StartLock0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    StartLock3ViewController(nibName: "StartLock3ViewController", bundle: nil)]
            
        } else if (mType == OSMOSIS_MSG_TYPE_BEGIN_UNLCOK) {
            return [StartUnbonding0ViewController(nibName: "StartUnbonding0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    StartUnbonding3ViewController(nibName: "StartUnbonding3ViewController", bundle: nil)]
            
        } else if (mType == OSMOSIS_MSG_TYPE_PERIOD_UNLOCK) {
            return [StartUnlock0ViewController(nibName: "StartUnlock0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    StartUnlock3ViewController(nibName: "StartUnlock3ViewController", bundle: nil)]
            
        } else if (mType == LIQUIDITY_MSG_TYPE_SWAP) {
            return [GdexSwap0ViewController(nibName: "GdexSwap0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    GdexSwap3ViewController(nibName: "GdexSwap3ViewController", bundle: nil)]
            
        } else if (mType == LIQUIDITY_MSG_TYPE_JOIN_POOL) {
            return [GdexDeposit0ViewController(nibName: "GdexDeposit0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    GdexDeposit3ViewController(nibName: "GdexDeposit3ViewController", bundle: nil)]
            
        } else if (mType == LIQUIDITY_MSG_TYPE_EXIT_POOL) {
            return [GdexWithdraw0ViewController(nibName: "GdexWithdraw0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    GdexWithdraw3ViewController(nibName: "GdexWithdraw3ViewController", bundle: nil)]
            
        }
        
        //IBC
        else if (mType == TASK_IBC_TRANSFER) {
            return [IBCSend0ViewController(nibName: "IBCSend0ViewController", bundle: nil),
                    IBCSend1ViewController(nibName: "IBCSend1ViewController", bundle: nil),
                    IBCSend2ViewController(nibName: "IBCSend2ViewController", bundle: nil),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    IBCSend4ViewController(nibName: "IBCSend4ViewController", bundle: nil)]
            
        } else if (mType == TASK_CW20_TRANSFER) {
            return [SendContract0ViewController(nibName: "SendContract0ViewController", bundle: nil),
                    SendContract1ViewController(nibName: "SendContract1ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    SendContract4ViewController(nibName: "SendContract4ViewController", bundle: nil)]
            
        }
        
        //RIZON
        else if (mType == TASK_RIZON_EVENT_HORIZON) {
            return [StepEventHorizon0ViewController(nibName: "StepEventHorizon0ViewController", bundle: nil),
                    StepEventHorizon1ViewController(nibName: "StepEventHorizon1ViewController", bundle: nil)]
        }
        
        //SIF
        else if (mType == SIF_MSG_TYPE_CLAIM_INCENTIVE) {
            return [SifIncentive0ViewController(nibName: "SifIncentive0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    SifIncentive3ViewController(nibName: "SifIncentive3ViewController", bundle: nil)]
            
        } else if (mType == SIF_MSG_TYPE_ADD_LP) {
            return [SifJoinPool0ViewController(nibName: "SifJoinPool0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    SifJoinPool3ViewController(nibName: "SifJoinPool3ViewController", bundle: nil)]
            
        } else if (mType == SIF_MSG_TYPE_REMOVE_LP) {
            return [SifExitPool0ViewController(nibName: "SifExitPool0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    SifExitPool3ViewController(nibName: "SifExitPool3ViewController", bundle: nil)]
            
        } else if (mType == SIF_MSG_TYPE_SWAP_CION) {
            return [SifSwap0ViewController(nibName: "SifSwap0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    SifSwap3ViewController(nibName: "SifSwap3ViewController", bundle: nil)]
            
        }
        
        //NFT
        else if (mType == TASK_ISSUE_NFT) {
            return [GenNFT0ViewController(nibName: "GenNFT0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    GenNFT3ViewController(nibName: "GenNFT3ViewController", bundle: nil)]
            
        } else if (mType == TASK_SEND_NFT) {
            return [SendNFT0ViewController(nibName: "SendNFT0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    SendNFT3ViewController(nibName: "SendNFT3ViewController", bundle: nil)]
            
        } else if (mType == TASK_ISSUE_NFT_DENOM) {
            return [GenDenom0ViewController(nibName: "GenDenom0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    GenDenom3ViewController(nibName: "GenDenom3ViewController", bundle: nil)]
            
        }
        
        //DESMOS
        else if (mType == TASK_GEN_PROFILE) {
            return [GenProfile0ViewController(nibName: "GenProfile0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    GenProfile3ViewController(nibName: "GenProfile3ViewController", bundle: nil)]
            
        } else if (mType == TASK_LINK_CHAIN_ACCOUNT) {
            return [LinkChainAccount0ViewController(nibName: "LinkChainAccount0ViewController", bundle: nil),
                    self.newVc(viewController: "StepMemoViewController"),
                    StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                    LinkChainAccount3ViewController(nibName: "LinkChainAccount3ViewController", bundle: nil)]
        }
        
        else {
            if (WUtils.isGRPC(chainType!)) {
                return [self.newVc(viewController: "StepRewardViewController"),
                        self.newVc(viewController: "StepMemoViewController"),
                        StepFeeGrpcViewController(nibName: "StepFeeGrpcViewController", bundle: nil),
                        self.newVc(viewController: "StepRewardCheckViewController")]
            } else {
                return [self.newVc(viewController: "StepRewardViewController"),
                        self.newVc(viewController: "StepMemoViewController"),
                        StepFeeOldViewController(nibName: "StepFeeOldViewController", bundle: nil),
                        self.newVc(viewController: "StepRewardCheckViewController")]
            }
            
        }
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mAccount        = BaseData.instance.selectAccountById(id: BaseData.instance.getRecentAccountId())
        mBalances       = mAccount!.account_balances
        chainType       = WUtils.getChainType(mAccount!.account_base_chain)
        mBnbToken       = WUtils.getBnbToken(mToSendDenom)
        
        self.getKey()
        
        if (mType == COSMOS_MSG_TYPE_REDELEGATE2) {
            self.onFetchBondedValidators(0)
            
        } else if (mType == OK_MSG_TYPE_DIRECT_VOTE) {
            if let votedVals = BaseData.instance.mOkStaking?.validator_address {
                self.mOkVoteValidators = votedVals
            } else {
                self.mOkVoteValidators = Array<String>()
            }
        }
            
        self.dataSource = self
        self.delegate = self
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
        
        for view in self.view.subviews {
            if let subView = view as? UIScrollView {
                subView.delegate = self
                subView.isScrollEnabled = false
                subView.bouncesZoom = false

            }
        }
        disableBounce = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func newVc(viewController: String) ->UIViewController {
        return UIStoryboard(name: "GenTx", bundle: nil).instantiateViewController(withIdentifier: viewController)
    }

    
    func onBeforePage() {
        disableBounce = false
        if (currentIndex == 0) {
            self.navigationController?.popViewController(animated: true)
        } else {
            setViewControllers([orderedViewControllers[currentIndex - 1]], direction: .reverse, animated: true, completion: { (finished) -> Void in
                self.currentIndex = self.currentIndex - 1
                let value:[String: Int] = ["step": self.currentIndex ]
                NotificationCenter.default.post(name: Notification.Name("stepChanged"), object: nil, userInfo: value)
                let currentVC = self.orderedViewControllers[self.currentIndex] as! BaseViewController
                currentVC.enableUserInteraction()
                self.disableBounce = true
            })
        }
        
    }
    
    func onNextPage() {
        disableBounce = false
        if (mType == COSMOS_MSG_TYPE_TRANSFER2 || mType == COSMOS_MSG_TYPE_REDELEGATE2 || mType == IRIS_MSG_TYPE_REDELEGATE ||
            mType == IOV_MSG_TYPE_REGISTER_ACCOUNT || mType == KAVA_MSG_TYPE_CLAIM_HARD_INCENTIVE_VV || mType == TASK_IBC_TRANSFER ||
            mType == TASK_CW20_TRANSFER) {
            if (currentIndex > 3) { return }
            
        } else {
            if (currentIndex > 2) { return }
        }
        setViewControllers([orderedViewControllers[currentIndex + 1]], direction: .forward, animated: true, completion: { (finished) -> Void in
            self.currentIndex = self.currentIndex + 1
            let value:[String: Int] = ["step": self.currentIndex ]
            NotificationCenter.default.post(name: Notification.Name("stepChanged"), object: nil, userInfo: value)
            let currentVC = self.orderedViewControllers[self.currentIndex] as! BaseViewController
            currentVC.enableUserInteraction()
            self.disableBounce = true
        })
        
        
//        if ((currentIndex <= 3 && (mType == COSMOS_MSG_TYPE_TRANSFER2 || mType == COSMOS_MSG_TYPE_REDELEGATE2 || mType == IRIS_MSG_TYPE_REDELEGATE ||
//                                    mType == IOV_MSG_TYPE_REGISTER_ACCOUNT || mType == KAVA_MSG_TYPE_CLAIM_HARD_INCENTIVE_VV) || mType == TASK_IBC_TRANSFER) || currentIndex <= 2) {
//            setViewControllers([orderedViewControllers[currentIndex + 1]], direction: .forward, animated: true, completion: { (finished) -> Void in
//                self.currentIndex = self.currentIndex + 1
//                let value:[String: Int] = ["step": self.currentIndex ]
//                NotificationCenter.default.post(name: Notification.Name("stepChanged"), object: nil, userInfo: value)
//                let currentVC = self.orderedViewControllers[self.currentIndex] as! BaseViewController
//                currentVC.enableUserInteraction()
//                self.disableBounce = true
//            })
//        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if(!completed) {
            
        } else {
            if let currentViewController = pageViewController.viewControllers?.first,
                let index = orderedViewControllers.index(of: currentViewController) {
                currentIndex = index
            }
            let value:[String: Int] = ["step": currentIndex]
            NotificationCenter.default.post(name: Notification.Name("stepChanged"), object: nil, userInfo: value)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if(disableBounce) {
            scrollView.contentOffset = CGPoint(x: scrollView.bounds.size.width, y: 0);
        }
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        if(disableBounce) {
            targetContentOffset.pointee = CGPoint(x: scrollView.bounds.size.width, y: 0);
        }
    }
    
    func onFetchBondedValidators(_ offset:Int) {
        DispatchQueue.global().async {
            let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
            defer { try! group.syncShutdownGracefully() }
            
            let channel = BaseNetWork.getConnection(self.chainType!, group)!
            defer { try! channel.close().wait() }
            
            let page = Cosmos_Base_Query_V1beta1_PageRequest.with {
                $0.limit = 300
            }
            let req = Cosmos_Staking_V1beta1_QueryValidatorsRequest.with {
                $0.pagination = page
                $0.status = "BOND_STATUS_BONDED"
            }
            do {
                let response = try Cosmos_Staking_V1beta1_QueryClient(channel: channel).validators(req).response.wait()
                response.validators.forEach { validator in
                    if (validator.operatorAddress != self.mTargetValidator_gRPC?.operatorAddress) {
                        self.mToReDelegateValidators_gRPC.append(validator)
                    }
                }
            } catch {
                print("onFetchgRPCBondedValidators failed: \(error)")
            }
            
            DispatchQueue.main.async(execute: {
                self.sortByPower()
            });
        }
        
    }
    
    func sortByPower() {
        mToReDelegateValidators_gRPC.sort{
            if ($0.description_p.moniker == "Cosmostation") { return true }
            if ($1.description_p.moniker == "Cosmostation") { return false }
            if ($0.jailed && !$1.jailed) { return false }
            if (!$0.jailed && $1.jailed) { return true }
            return Double($0.tokens)! > Double($1.tokens)!
        }
    }
    
    
    var privateKey: Data?
    var publicKey: Data?
    func getKey() {
        DispatchQueue.global().async {
            if (self.mAccount?.account_from_mnemonic == true) {
                if let words = KeychainWrapper.standard.string(forKey: self.mAccount!.account_uuid.sha1())?.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: " ") {
                    self.privateKey = KeyFac.getPrivateRaw(words, self.mAccount!)
                    self.publicKey = KeyFac.getPublicFromPrivateKey(self.privateKey!)
//                    print("Mnemonci private ", self.privateKey!.hexEncodedString())
//                    print("Mnemonci publicKey ", self.publicKey!.hexEncodedString())
                }
                
            } else {
                if let key = KeychainWrapper.standard.string(forKey: self.mAccount!.getPrivateKeySha1()) {
                    self.privateKey = KeyFac.getPrivateFromString(key)
                    self.publicKey = KeyFac.getPublicFromPrivateKey(self.privateKey!)
//                    print("Private private ", self.privateKey!.hexEncodedString())
//                    print("Private publicKey ", self.publicKey!.hexEncodedString())
                }
            }
        }
    }
}
