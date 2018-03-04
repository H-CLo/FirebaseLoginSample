//
//  LoginSuccessViewController.swift
//  FirebaseLoginSample
//
//  Created by Hung Chang Lo on 2018/3/5.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginSuccessViewController: UIViewController {
    
    
    
    // MARK: - IBOutlet variable
    
    @IBOutlet weak var accountLabel: UILabel!
    
    
    
    // MARK: - view life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - IBAction
    
    @IBAction func logoutButtonDidPushed(_ sender: UIButton) {
        
        do
        {
            try Auth.auth().signOut()
        }
        catch let signOutError
        {
            print ("Error signing out: \(signOutError.localizedDescription)")
        }
    }
    
    

}
