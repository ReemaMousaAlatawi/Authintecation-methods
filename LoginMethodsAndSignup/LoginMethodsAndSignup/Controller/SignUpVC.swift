//
//  SignUpVC.swift
//  LoginMethodsAndSignup
//
//  Created by Reema Mousa on 15/09/1443 AH.
//

import UIKit

class SignUpVC: UIViewController {

    let nameTF :  UITextField = {
        let nameTF = UITextField()
        nameTF.placeholder = "Enter Your Name"
        nameTF.borderStyle = .roundedRect
        return nameTF
    }()
    
    let emaiTF :  UITextField = {
        let emailTF = UITextField()
        emailTF.placeholder = "Enter Your Email"
        emailTF.borderStyle = .roundedRect
        emailTF.keyboardType = .emailAddress

        return emailTF
    }()
    
    let phoneNumberTF :  UITextField = {
        let phoneNumberTF = UITextField()
        phoneNumberTF.placeholder = "Enter Your Phone Number"
        phoneNumberTF.borderStyle = .roundedRect
        phoneNumberTF.keyboardType =  .phonePad
        return phoneNumberTF
    }()
    
    
    let passwordTF :  UITextField = {
        let passwordTF = UITextField()
        passwordTF.placeholder = "Enter Your Password"
        passwordTF.borderStyle = .roundedRect
        passwordTF.isSecureTextEntry = true
        return passwordTF
    }()
    
    
    let labelAsk :  UILabel = {
        let labelAsk = UILabel()
        labelAsk.text = "You Have Account ? "
        labelAsk.textAlignment = .left
        labelAsk.textColor = .gray
        return labelAsk
    }()
    
    var signInButton : UIButton = {
        let signInButton = UIButton()
        
        signInButton.setTitleColor(.black,
                                  for: .normal)
        signInButton.setTitle("SignIn ",
                             for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "Trebuchet MS",
                                              size: 10)
        return signInButton
    }()
    
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
    
    var imageSignUp : UIImageView = {
        let imageSignUp = UIImageView()
        imageSignUp.image = UIImage(named: "Account")
        return imageSignUp
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sign Up Now"
        self.view.backgroundColor = .white

        nameTF.frame = CGRect(x: 75,
                              y: 420,
                              width: 300,
                              height: 50)
        
        emaiTF.frame = CGRect(x: 75,
                              y: 480,
                              width: 300,
                              height: 50)
        
        phoneNumberTF.frame = CGRect(x: 75,
                              y: 540,
                              width: 300,
                              height: 50)
        
        passwordTF.frame = CGRect(x: 75,
                              y: 600,
                              width: 300,
                              height: 50)
        
        
        labelAsk.frame = CGRect(x: 120 ,
                                   y: 680,
                                   width: 300,
                                   height: 50)
        
        signInButton.frame = CGRect(x: 260 ,
                                   y: 680,
                                   width: 80,
                                   height: 50)
        
        
        signUpButtonPressed.frame = CGRect(x: 95,
                                   y: view.frame.height - 200,
                                   width: view.frame.width - 200,
                                   height: 50)
        
        imageSignUp.frame = CGRect(x: 70,
                                      y: 100,
                                      width: 300,
                                      height: 300)
        
        view.addSubview(nameTF)
        view.addSubview(emaiTF)
        view.addSubview(phoneNumberTF)
        view.addSubview(passwordTF)
        view.addSubview(labelAsk)
        view.addSubview(signInButton)
        view.addSubview(signUpButtonPressed)
        view.addSubview(imageSignUp)
        
        signInButton.addTarget(self,
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
        let vc = AllMethodsVC()
        let navBar = UINavigationController(rootViewController: vc)
        navBar.modalPresentationStyle = .fullScreen
        present(navBar, animated: true)
    }
}
