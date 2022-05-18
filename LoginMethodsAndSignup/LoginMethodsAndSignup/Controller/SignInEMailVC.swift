//
//  SignInEMailVC.swift
//  LoginMethodsAndSignup
//
//  Created by Reema Mousa on 15/09/1443 AH.
//

import UIKit

class SignInEMailVC: UIViewController {
    
    
    let imageForSignIn : UIImageView = {
       let imageForSignIn = UIImageView()
        imageForSignIn.image = UIImage(named: "Account")
         return imageForSignIn
    }()
    
    let emaiTF :  UITextField = {
        let emailTF = UITextField()
        emailTF.placeholder = "Enter Your Email"
        emailTF.borderStyle = .roundedRect
        return emailTF
    }()
    
    let passwordTF :  UITextField = {
        let emailTF = UITextField()
        emailTF.placeholder = "Enter Your Password"
        emailTF.borderStyle = .roundedRect
        return emailTF
    }()
    
    
    let labelAsk :  UILabel = {
        let labelAsk = UILabel()
        labelAsk.text = "Do't Have Account ? "
        labelAsk.textAlignment = .left
        labelAsk.textColor = .gray
        return labelAsk
    }()
    
    var signUpButton : UIButton = {
        let signUpButton = UIButton()
        
         signUpButton.setTitleColor(.black,
                                  for: .normal)
        signUpButton.setTitle("SignUp ",
                             for: .normal)
        signUpButton.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                              size: 10)
        return signUpButton
    }()
    
    var signInButtonPressed : UIButton = {
        let signInButtonPressed = UIButton()
        
        signInButtonPressed.backgroundColor = .systemYellow
        signInButtonPressed.setTitleColor(.black,
                                  for: .normal)
        signInButtonPressed.setTitle("SignIn ",
                             for: .normal)
        signInButtonPressed.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                              size: 18)
        
        signInButtonPressed.layer.cornerRadius = 15
        return signInButtonPressed
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Sign in With Email"
        
        emaiTF.frame = CGRect(x: 70 ,
                                   y: 500,
                                   width: 300,
                                   height: 50)

        
        passwordTF.frame = CGRect(x: 70 ,
                                   y: 600,
                                   width: 300,
                                   height: 50)

        
        labelAsk.frame = CGRect(x: 120 ,
                                   y: 680,
                                   width: 300,
                                   height: 50)
        
        signUpButton.frame = CGRect(x: 260 ,
                                   y: 680,
                                   width: 80,
                                   height: 50)
        
        
        signInButtonPressed.frame = CGRect(x: 95,
                                   y: view.frame.height - 200,
                                   width: view.frame.width - 200,
                                   height: 50)
        
        imageForSignIn.frame = CGRect(x: 70,
                                      y: 100,
                                      width: 300,
                                      height: 400)
        
        
        view.addSubview(emaiTF)
        view.addSubview(passwordTF)
        view.addSubview(labelAsk)
        view.addSubview(signUpButton)
        view.addSubview(signInButtonPressed)
        view.addSubview(imageForSignIn)

        signUpButton.addTarget(self,
                               action: #selector(go),
                               for: .touchUpInside)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: " Dismiss",
                                                           style: .plain,
                                                           target: self , action: #selector(Dismiss))
   }
   @objc func Dismiss(){
        dismiss(animated: true, completion: nil)
   }
    @objc func go(){
        let vc = SignUpVC()
        let navBar = UINavigationController(rootViewController: vc)
        navBar.modalPresentationStyle = .fullScreen
        present(navBar, animated: true)
    }
}
