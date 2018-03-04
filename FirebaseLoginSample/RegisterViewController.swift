//
//  RegisterViewController.swift
//  FirebaseLoginSample
//
//  Created by Hung Chang Lo on 2018/3/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {

    
    
    // MARK: - IBOutlet variable
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - IBAction
    
    @IBAction func registerButtonDidPushed(_ sender: UIButton) {
        
        if let email = accountTextField.text, let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password, completion: {
                (user, error) -> Void in
                
                if let err = error {
                    
                    self.showMsg(msg: "註冊失敗, error = \(err.localizedDescription)")
                    return
                }
                
                self.showMsg(msg: "恭喜您註冊成功嘍")
            })
        }
        else
        {
            showMsg(msg: "請輸入您的Email和密碼")
        }
    }
    
    
    
    // MARK: - private function
    
    private func showMsg(msg: String) -> Void {
        
        let alert = UIAlertController(title: "註冊", message: msg, preferredStyle: .alert)
        
        let actionOk = UIAlertAction(title: "好", style: .default, handler: nil)
        
        alert.addAction(actionOk)
        
        self.present(alert, animated: false, completion: nil)
    }

}
