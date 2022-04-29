//
//  Mnemonic.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/04/19.
//  Copyright © 2022 wannabit. All rights reserved.
//

import Foundation
import SwiftKeychainWrapper

public class MWords {
    var id: Int64 = -1;
    var uuid: String = "";
    var nickName: String = "";
    var wordsCnt: Int64 = 0;
    var isFavo: Bool = false;
    var importTime:Int64 = -1;
    var linkedAccountsCnt: UInt16 = 0;
    
    init (isNew: Bool) {
        uuid = UUID().uuidString
        importTime = Date().millisecondsSince1970
    }
    
    init (_ id: Int64, _ uuid: String, _ nickName: String, _ wordsCnt: Int64, _ isFavo: Bool, _ importTime: Int64) {
        self.id = id;
        self.uuid = uuid;
        self.nickName = nickName;
        self.wordsCnt = wordsCnt;
        self.isFavo = isFavo;
        self.importTime = importTime;
    }
    
    func getWords() -> String {
        if let words = KeychainWrapper.standard.string(forKey: self.uuid.sha1())?.trimmingCharacters(in: .whitespacesAndNewlines) {
            return words
        }
        return ""
    }
}
