//
//  ViewController.swift
//  LoginMethodsAndSignup
//
//  Created by Reema Mousa on 15/09/1443 AH.
//

import UIKit

class AllMethodsVC: UIViewController {
    
    // sign In By Email
    var signInEmail : UIButton = {
        let signInEmail = UIButton()
        
        signInEmail.backgroundColor = .systemYellow
        signInEmail.setTitleColor(.black,
                                  for: .normal)
        signInEmail.setTitle("SignIn with your E-mail",
                             for: .normal)
        signInEmail.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                              size: 18)
        
        signInEmail.layer.cornerRadius = 15
        return signInEmail
        
    }()
    
    
    
    
    
    
    // sign In By FaceBook
    
    
    
    
    var signInFaceBook : UIButton = {
        let signInFaceBook = UIButton()
        signInFaceBook.backgroundColor = .systemBlue
        signInFaceBook.setTitleColor(.white,
                                     for: .normal)
        signInFaceBook.setTitle("SignIn With FaceBook",
                                for: .normal)
        signInFaceBook.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                                 size: 18)
        
        signInFaceBook.layer.cornerRadius = 15
        return signInFaceBook
    }()
    
    // sign In By Apple
    var signInApple : UIButton = {
        let signInApple = UIButton()
        signInApple.backgroundColor = .black
        signInApple.setTitleColor(.white,
                                  for: .normal)
        signInApple.setTitle("SignIn With Apple",
                             for: .normal)
        signInApple.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                              size: 18)
        
        signInApple.layer.cornerRadius = 15
        return signInApple
    }()
    // sign In By Twitter
    var signInTwitter : UIButton = {
        let signInTwitter = UIButton()
        signInTwitter.backgroundColor = .blue
        signInTwitter.setTitleColor(.white,
                                    for: .normal)
        signInTwitter.setTitle("SignIn With Twitter",
                               for: .normal)
        signInTwitter.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                                size: 18)
        
        signInTwitter.layer.cornerRadius = 15
        return signInTwitter
    }()
    
    // sign In By Googel
    var signInGoogel : UIButton = {
        let signInGoogel = UIButton()
        signInGoogel.backgroundColor = .systemRed
        signInGoogel.setTitleColor(.white,
                                   for: .normal)
        signInGoogel.setTitle("SignIn With Googel",
                              for: .normal)
        signInGoogel.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                               size: 18)
        
        signInGoogel.layer.cornerRadius = 15
        return signInGoogel
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        signInEmail.frame = CGRect(x: 95,
                                   y: view.frame.height - 800,
                                   width: view.frame.width - 200,
                                   height: 50)
        
        signInApple.frame = CGRect(x: 95 ,
                                   y: view.frame.height - 700,
                                   width: view.frame.width - 200,
                                   height: 50)
        
        signInFaceBook.frame = CGRect(x: 95 ,
                                      y: view.frame.height - 600,
                                      width: view.frame.width - 200,
                                      height: 50)
        
        
        signInTwitter.frame = CGRect(x: 95 ,
                                     y: view.frame.height - 500,
                                     width: view.frame.width - 200,
                                     height: 50)
        
        signInGoogel.frame = CGRect(x: 95 ,
                                    y: view.frame.height - 400,
                                    width: view.frame.width - 200,
                                    height: 50)
        
        view.addSubview(signInEmail)
        view.addSubview(signInApple)
        view.addSubview(signInFaceBook)
        view.addSubview(signInTwitter)
        view.addSubview(signInGoogel)
        
        
        signInEmail.addTarget(self,
                              action: #selector(signInEmailPressed(_:)),
                              for: .touchUpInside)
        
        
        signInApple.addTarget(self,
                              action: #selector(signInApplePressed(_:)),
                              for: .touchUpInside)
        
        signInFaceBook.addTarget(self,
                              action: #selector(signInFacebookPressed(_:)),
                              for: .touchUpInside)
        
         navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Back",
                                                           style: .plain,
                                                           target: self , action: #selector(Back))
   }
   @objc func Back(){
        dismiss(animated: true, completion: nil)
   }
    
    @objc func signInEmailPressed(_ sender : Any){

        let vc = SignInEMailVC()
        let navBar = UINavigationController(rootViewController: vc)
        navBar.modalPresentationStyle = .fullScreen
        present(navBar, animated: true)

    }
    
    @objc func signInApplePressed(_ sender : Any){

        let vc = SignInWithAppleVC()
        let navBar = UINavigationController(rootViewController: vc)
        navBar.modalPresentationStyle = .fullScreen
        present(navBar, animated: true)

    }
 
    
    @objc func signInFacebookPressed(_ sender : Any){

        let vc = SignInWithFacebookVC()
        let navBar = UINavigationController(rootViewController: vc)
        navBar.modalPresentationStyle = .fullScreen
        present(navBar, animated: true)

    }
    
}
