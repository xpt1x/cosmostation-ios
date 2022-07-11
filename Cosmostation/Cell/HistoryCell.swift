//
//  HistoryCell.swift
//  Cosmostation
//
//  Created by yongjoo on 23/03/2019.
//  Copyright © 2019 wannabit. All rights reserved.
//

import UIKit

class HistoryCell: UITableViewCell {

    @IBOutlet weak var txRootCard: CardView!
    @IBOutlet weak var txTypeLabel: UILabel!
    @IBOutlet weak var txResultLabel: UILabel!
    @IBOutlet weak var txTimeLabel: UILabel!
    @IBOutlet weak var txTimeGapLabel: UILabel!
    @IBOutlet weak var txBlockLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    func bindHistoryBnbView(_ history: BnbHistory, _ address: String) {
        txTimeLabel.text = WDP.dpTime(history.timeStamp)
        txTimeGapLabel.text = WDP.dpTimeGap(history.timeStamp)
        txBlockLabel.text = String(history.blockHeight) + " block"
        txTypeLabel.text = history.getTitle(address)
        txResultLabel.isHidden = true
    }
    
    func bindHistoryOkView(_ history: OKHistoryHit, _ address: String) {
        txTypeLabel.text = history.transactionDataType
        txTimeLabel.text = WDP.dpTime(history.blocktime)
        txTimeGapLabel.text = WDP.dpTimeGap(history.blocktime)
        txBlockLabel.text = history.hash
    }
    
}
