//
//  ChainAkash.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/05/10.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit
import Foundation

class ChainAkash: ChainConfig {
    var isGrpc = true
    var chainType = ChainType.AKASH_MAIN
    var chainImg = UIImage(named: "akashChainImg")
    var chainInfoImg = UIImage(named: "akashImg")
    var chainInfoTitle = NSLocalizedString("send_guide_title_akash", comment: "")
    var chainInfoMsg = NSLocalizedString("send_guide_msg_akash", comment: "")
    var chainColor = UIColor(named: "akash")!
    var chainColorDark = UIColor(named: "akash_dark")
    var chainColorBG = UIColor(named: "akash")!.withAlphaComponent(0.15)
    var chainTitle = "(Akash Mainnet)"
    var chainTitle2 = "AKASH"
    var chainDBName = "SUPPORT_CHAIN_AKASH_MAIN"
    var chainAPIName = "akash"
    
    var stakeDenomImg = UIImage(named: "akashTokenImg")
    var stakeDenom = "uakt"
    var stakeSymbol = "AKT"
    var stakeSendImg = UIImage(named: "sendImg")
    var stakeSendBg = UIColor(named: "akash")!
    
    var addressPrefix = "akash"
    let addressHdPath0 = "m/44'/118'/0'/0/X"
    
    var pushSupport = false
    var grpcUrl = "lcd-akash-app.cosmostation.io"
    var grpcPort = "9090"
    var lcdUrl = "https://lcd-akash-app.cosmostation.io"
    var apiUrl = "https://api-akash.cosmostation.io/"
    var explorerUrl = MintscanUrl + "akash/"
    var validatorImgUrl = MonikerUrl + "akash/"
    var relayerImgUrl = RelayerUrl + "akash/relay-akash-unknown.png"
    
    required init(_ chainType: ChainType) {
        self.chainType = chainType
    }
    
    func supportHdPaths() -> Array<String> {
        return [addressHdPath0]
    }
    
    func getHdPath(_ type: Int, _ path: Int) -> String {
        supportHdPaths()[type].replacingOccurrences(of: "X", with: String(path))
    }
    
    func getDpAddress(_ words: MWords, _ type: Int, _ path: Int) -> String {
        return ""
    }
}
