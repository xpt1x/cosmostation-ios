//
//  ChainChihuahua.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/05/10.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit
import Foundation

class ChainChihuahua: ChainConfig {
    var chainType = ChainType.CHIHUAHUA_MAIN
    var chainImg = UIImage(named: "chainChihuahua")
    var chainInfoImg = UIImage(named: "infoiconChihuahua")
    var chainInfoTitle = NSLocalizedString("send_guide_title_chihuahua", comment: "")
    var chainInfoMsg = NSLocalizedString("send_guide_msg_chihuahua", comment: "")
    var stakeDenomImg = UIImage(named: "tokenHuahua")
    var stakeDenom = "uhuahua"
    var stakeSymbol = "HUAHUA"
    var accountPrefix = "chihuahua"
    var hdPath0 = "m/44'/118'/0'/0/X"
    
    required init(_ chainType: ChainType) {
        self.chainType = chainType
    }
    
    func supportHdPaths() -> Array<String> {
        return [hdPath0]
    }
    
    func getHdPath(_ type: Int, _ path: Int) -> String {
        supportHdPaths()[type].replacingOccurrences(of: "X", with: String(path))
    }
    
    func getDpAddress(_ words: MWords, _ type: Int, _ path: Int) -> String {
        return ""
    }
}
