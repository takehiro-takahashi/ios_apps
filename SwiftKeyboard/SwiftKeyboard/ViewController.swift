//
//  ViewController.swift
//  SwiftKeyboard
//
//  Created by 高橋岳宏 on 2018/11/21.
//  Copyright © 2018 高橋岳宏. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var mailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  textFieldDelegateをtextFieldを使っている箇所で使えるようにする
        mailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //  キーボードを閉じる
        textField.resignFirstResponder()

        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        closeKeyboard()

    }

    @IBAction func signin(_ sender: Any) {
        
        //  キーボードを閉じる
        closeKeyboard()
        
        //  結果の結合
        mailLabel.text = mailTextField.text!
        passwordLabel.text = passwordTextField.text!
        
    }
    
    func closeKeyboard() {
        
        mailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
    }
    
}

