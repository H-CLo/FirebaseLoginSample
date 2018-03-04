//
//  MainViewController.swift
//  FirebaseLoginSample
//
//  Created by Hung Chang Lo on 2018/3/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class MainViewController: UIViewController {
    
    
    
    // MARK: IBOutlet variable
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    // MARK: View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: IBAction
    
    @IBAction func loginButtonDidPushed(_ sender: UIButton) {
        
        if let email = accountTextField.text, let password = passwordTextField.text {
            
            Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
                
                if let err = error {
                    
                    self.showMsg(msg: "登入失敗, error = \(err.localizedDescription)")
                    return
                }
                
                self.showMsgWithClourse(msg: "恭喜您登入成功嘍", userInfo: user?.displayName)
                
            })
            
        }
        else
        {
            showMsg(msg: "請輸入您的Email和密碼")
        }
        
    }
    
    
    
    @IBAction func showRegisterViewButtonDidPushed(_ sender: UIButton) {
        
        let registerView = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        
        self.navigationController?.pushViewController(registerView, animated: true)
        
        
    }
    
    
    
    
    // MARK: - private function
    
    private func showMsg(msg: String) -> Void {
        
        let alert = UIAlertController(title: "登入", message: msg, preferredStyle: .alert)
        
        let actionOk = UIAlertAction(title: "好", style: .default, handler: nil)
        
        alert.addAction(actionOk)
        
        self.present(alert, animated: false, completion: nil)
    }
    
    private func showMsgWithClourse(msg: String, userInfo: String?) -> Void {
        
        let alert = UIAlertController(title: "登入", message: msg, preferredStyle: .alert)
        
        let actionOk = UIAlertAction(title: "好", style: .default, handler: {
            (alert: UIAlertAction) in
            
            let loginSucView = LoginSuccessViewController(nibName: "LoginSuccessViewController", bundle: nil)
            //loginSucView.accountLabel.text = userInfo
            self.navigationController?.pushViewController(loginSucView, animated: true)
        })
        
        
        
        alert.addAction(actionOk)
        
        self.present(alert, animated: false, completion: nil)
        
    }

}
