//
//  ViewController.swift
//  SwiftCountUp
//
//  Created by 高橋岳宏 on 2018/11/21.
//  Copyright © 2018 高橋岳宏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    
    // countLabelに反映する数値
    var result: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func plus(_ sender: Any) {
        
        result += 1
        countLabel.text = "\(result)"
        
    }
    
    @IBAction func minus(_ sender: Any) {
        
        if (result > 0) {
            result -= 1
            countLabel.text = "\(result)"
        } else {
            showAlert()
        }
        
    }
    
    // 0の状態でminusボタンを押した際に、出すアラート
    func showAlert() {
        
        let title: String = "警告"
        let message: String = "マイナスにはできません"
        let okButtonText: String = "ごめんやん"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: okButtonText, style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
        
    }
    
}

