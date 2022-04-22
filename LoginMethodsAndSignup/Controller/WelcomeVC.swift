//
//  WelcomeVC.swift
//  LoginMethodsAndSignup
//
//  Created by Reema Mousa on 16/09/1443 AH.
//

import UIKit

class WelcomeVC: UIViewController {
    
    var signUpButtonPressed : UIButton = {
        let signInEmail = UIButton()
        
        signInEmail.backgroundColor = .systemYellow
        signInEmail.setTitleColor(.black,
                                  for: .normal)
        signInEmail.setTitle("SignUp ",
                             for: .normal)
        signInEmail.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                              size: 18)
        
        signInEmail.layer.cornerRadius = 15
        return signInEmail
        
    }()
    
    let labelAsk :  UILabel = {
        let labelAsk = UILabel()
        labelAsk.text = "OR"
        labelAsk.textAlignment = .left
        labelAsk.textColor = .gray
        return labelAsk
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
    
    
    var imageWelcome : UIImageView = {
        let imageWelcome = UIImageView()
        imageWelcome.image = UIImage(named: "Account")
        return imageWelcome
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpButtonPressed.frame = CGRect(x: 240 ,
                                   y: 680,
                                   width: 80,
                                   height: 50)
        
        labelAsk.frame = CGRect(x: 200 ,
                                   y: 680,
                                   width: 300,
                                   height: 50)
        
        signInButtonPressed.frame = CGRect(x: 100 ,
                                   y: 680,
                                   width: 80,
                                   height: 50)
        
        imageWelcome.frame = CGRect(x: 70,
                                      y: 100,
                                      width: 300,
                                      height: 400)
        
        view.addSubview(signUpButtonPressed)
        view.addSubview(labelAsk)
        view.addSubview(signInButtonPressed)
        view.addSubview(imageWelcome)
        
        
        signUpButtonPressed.addTarget(self,
                                      action:#selector(signUpButton) ,
                                      for: .touchUpInside)
        
        signInButtonPressed.addTarget(self,
                                      action:#selector(signInButton) ,
                                      for: .touchUpInside)
    }

    @objc func signUpButton (){
        let vc = SignUpVC()
        let navBar = UINavigationController(rootViewController: vc)
        navBar.modalPresentationStyle = .fullScreen
        present(navBar, animated: true)
        
    }
    
    @objc func signInButton(){
        let vc = AllMethodsVC()
        let navBar = UINavigationController(rootViewController: vc)
        navBar.modalPresentationStyle = .fullScreen
        present(navBar, animated: true)
        
    }
}
