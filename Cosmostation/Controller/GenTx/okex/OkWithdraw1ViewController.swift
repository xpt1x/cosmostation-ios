//
//  OkWithdraw1ViewController.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/06/23.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit

class OkWithdraw1ViewController: BaseViewController, UITextFieldDelegate {
    
    @IBOutlet weak var toWithdrawAmountInput: AmountInputTextField!
    @IBOutlet weak var availableAmountLabel: UILabel!
    @IBOutlet weak var denomTitleLabel: UILabel!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var btn01: UIButton!
    
    var pageHolderVC: StepGenTxViewController!
    var userAvailable = NSDecimalNumber.zero
    var mDpDecimal:Int16 = 18

    override func viewDidLoad() {
        super.viewDidLoad()
        self.account = BaseData.instance.selectAccountById(id: BaseData.instance.getRecentAccountId())
        self.chainType = ChainFactory.getChainType(account!.account_base_chain)
        self.chainConfig = ChainFactory.getChainConfig(chainType)
        self.pageHolderVC = self.parent as? StepGenTxViewController
        WDP.dpMainSymbol(chainConfig, denomTitleLabel)
        
        if (pageHolderVC.chainType! == ChainType.OKEX_MAIN) {
            mDpDecimal = 18
            userAvailable = BaseData.instance.okDepositAmount()
            availableAmountLabel.attributedText = WDP.dpAmount(userAvailable.stringValue, availableAmountLabel.font, 0, mDpDecimal)
        }
        toWithdrawAmountInput.delegate = self
        toWithdrawAmountInput.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        let dp = "+ " + WUtils.decimalNumberToLocaleString(NSDecimalNumber(string: "0.1"), 1)
        btn01.setTitle(dp, for: .normal)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.shouldChange(charactersIn: range, replacementString: string, displayDecimal: mDpDecimal)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if (textField == toWithdrawAmountInput) {
            self.onUIupdate()
        }
    }
    
    func onUIupdate() {
        guard let text = toWithdrawAmountInput.text?.trimmingCharacters(in: .whitespaces) else {
            self.toWithdrawAmountInput.layer.borderColor = UIColor.warnRed.cgColor
            return
        }
        if(text.count == 0) {
            self.toWithdrawAmountInput.layer.borderColor = UIColor.font04.cgColor
            return
        }
        
        let userInput = WUtils.localeStringToDecimal(text)
        
        if (text.count > 1 && userInput == NSDecimalNumber.zero) {
            self.toWithdrawAmountInput.layer.borderColor = UIColor.warnRed.cgColor
            return
        }
        if (userInput.compare(userAvailable).rawValue > 0) {
            self.toWithdrawAmountInput.layer.borderColor = UIColor.warnRed.cgColor
            return
        }
        self.toWithdrawAmountInput.layer.borderColor = UIColor.font04.cgColor
    }
    
    func isValiadAmount() -> Bool {
        let text = toWithdrawAmountInput.text?.trimmingCharacters(in: .whitespaces)
        if (text == nil || text!.count == 0) { return false }
        let userInput = WUtils.localeStringToDecimal(text!)
        if (userInput == NSDecimalNumber.zero) { return false }
        if (userInput.compare(userAvailable).rawValue > 0) { return false }
        return true
    }

    
    @IBAction func onClickCancel(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        pageHolderVC.onBeforePage()
    }
    
    @IBAction func onClickNext(_ sender: UIButton) {
        if (isValiadAmount()) {
            let userInput = WUtils.localeStringToDecimal((toWithdrawAmountInput.text?.trimmingCharacters(in: .whitespaces))!)
            var toWithdrawCoin: Coin?
            if (pageHolderVC.chainType! == ChainType.OKEX_MAIN) {
                toWithdrawCoin = Coin.init(OKT_MAIN_DENOM, WUtils.getFormattedNumber(userInput, mDpDecimal))
            }
            
            self.pageHolderVC.mOkToWithdraw = toWithdrawCoin!
            self.cancelBtn.isUserInteractionEnabled = false
            self.nextBtn.isUserInteractionEnabled = false
            pageHolderVC.onNextPage()
        }
    }
    
    override func enableUserInteraction() {
        self.cancelBtn.isUserInteractionEnabled = true
        self.nextBtn.isUserInteractionEnabled = true
    }
    
    @IBAction func onClickClear(_ sender: UIButton) {
        toWithdrawAmountInput.text = ""
        self.onUIupdate()
    }
    
    @IBAction func onClickAdd01(_ sender: UIButton) {
        var exist = NSDecimalNumber.zero
        if (toWithdrawAmountInput.text!.count > 0) {
            exist = NSDecimalNumber(string: toWithdrawAmountInput.text!, locale: Locale.current)
        }
        let added = exist.adding(NSDecimalNumber(string: "0.1"))
        toWithdrawAmountInput.text = WUtils.decimalNumberToLocaleString(added, 8)
        self.onUIupdate()
    }
    
    @IBAction func onClickAdd1(_ sender: UIButton) {
        var exist = NSDecimalNumber.zero
        if (toWithdrawAmountInput.text!.count > 0) {
            exist = NSDecimalNumber(string: toWithdrawAmountInput.text!, locale: Locale.current)
        }
        let added = exist.adding(NSDecimalNumber(string: "1"))
        toWithdrawAmountInput.text = WUtils.decimalNumberToLocaleString(added, 8)
        self.onUIupdate()
    }
    
    @IBAction func onClickAdd10(_ sender: UIButton) {
        var exist = NSDecimalNumber.zero
        if (toWithdrawAmountInput.text!.count > 0) {
            exist = NSDecimalNumber(string: toWithdrawAmountInput.text!, locale: Locale.current)
        }
        let added = exist.adding(NSDecimalNumber(string: "10"))
        toWithdrawAmountInput.text = WUtils.decimalNumberToLocaleString(added, 8)
        self.onUIupdate()
    }
    
    @IBAction func onClickAdd100(_ sender: UIButton) {
        var exist = NSDecimalNumber.zero
        if (toWithdrawAmountInput.text!.count > 0) {
            exist = NSDecimalNumber(string: toWithdrawAmountInput.text!, locale: Locale.current)
        }
        let added = exist.adding(NSDecimalNumber(string: "100"))
        toWithdrawAmountInput.text = WUtils.decimalNumberToLocaleString(added, 8)
        self.onUIupdate()
    }
    
    @IBAction func onClickHalf(_ sender: UIButton) {
        let halfValue = userAvailable.dividing(by: NSDecimalNumber(2), withBehavior: WUtils.getDivideHandler(mDpDecimal))
        toWithdrawAmountInput.text = WUtils.decimalNumberToLocaleString(halfValue, mDpDecimal)
    }
    
    @IBAction func onClickMax(_ sender: UIButton) {
        toWithdrawAmountInput.text = WUtils.decimalNumberToLocaleString(userAvailable, mDpDecimal)
    }
}
