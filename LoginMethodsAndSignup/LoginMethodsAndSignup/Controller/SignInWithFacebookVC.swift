//
//  SignInWithFacebookVC.swift
//  LoginMethodsAndSignup
//
//  Created by Reema Mousa on 18/09/1443 AH.
//

import UIKit
import FBSDKLoginKit

class SignInWithFacebookVC: UIViewController ,
                            LoginButtonDelegate  {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if let token = AccessToken.current,
           !token.isExpired {
            let token = token.tokenString
            
            let request  = FBSDKLoginKit.GraphRequest(graphPath: "me",
                                                      parameters: ["Fields": "email ,name"],
                                                      tokenString: token,
                                                      version: nil ,
                                                      httpMethod: .get)

            request.start(completion: {conenection , result ,error in
                print("\(result)")
            })         }
        else{
            
            let loginButton = FBLoginButton()
            loginButton.center = view.center
            loginButton.delegate = self
            loginButton.permissions = ["public_profile", "email"]
            
            view.addSubview(loginButton)
        }
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: " Dismiss",
                                                           style: .plain,
                                                           target: self , action: #selector(Dismiss))
   }
   @objc func Dismiss(){
        dismiss(animated: true, completion: nil)
   }
    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        
        let token = result?.token?.tokenString
        
        let request  = FBSDKLoginKit.GraphRequest(graphPath: "me",
                                                  parameters: ["Fields": "email ,name"],
                                                  tokenString: token,
                                                  version: nil ,
                                                  httpMethod: .get)


        request.start(completion: {conenection , result ,error in
            print("\(result)")
        })
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
    }
    
}
