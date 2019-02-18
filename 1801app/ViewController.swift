//
//  ViewController.swift
//  SocialIntegration
//
//  Created by Saikumar on 17/07/18.
//  Copyright © 2018 SSApps. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import FacebookCore
import FacebookLogin
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton()
        loginButton.frame=CGRect(x: 50, y: 600, width: 300, height: 50)
        if (FBSDKAccessToken.current() != nil) {
            // User is logged in, do work such as go to next view controller.
        }
        loginButton.readPermissions = ["public_profile", "email"]
        // Optional: Place the button in the center of your view.
       // loginButton.center = view.center
        view.addSubview(loginButton)
        loginButtonClicked()
    }
    
    
    // Once the button is clicked, show the login dialog
    @objc func loginButtonClicked() {
        
        let loginManager = LoginManager()
        loginManager.logIn(readPermissions: [.email, .publicProfile, .userFriends], viewController: self) { (loginResult) in
            
            if((AccessToken.current) != nil){
                
                GraphRequest(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"]).start({ (connection, result) in
                    
                    print(result)
                    
                })
            }
        }
    }
}


