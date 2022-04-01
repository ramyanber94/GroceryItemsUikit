//
//  LoginVC.swift
//  GroceryItemsUikit
//
//  Created by Ramy Anber on 2022-03-31.
//

import UIKit

class LoginVC: UIViewController {
    var headerView: UIView!
    var headerTitle: UILabel!
    var bodyView: UIView!
    var txtPassword: UITextField!
    var txtEmail: UITextField!
    var btnLogin: UIButton!
    var btnRegister: UIButton!
    var sf = ScaleFactor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        headerView = UIView()
        bodyView = UIView()
        headerView.backgroundColor = .white
        bodyView.backgroundColor = .white
        self.view.addSubview(bodyView)
        self.view.addSubview(headerView)
        
        headerTitle = UILabel()
        headerTitle.text = "Sign In"
        headerTitle.textAlignment = .center
        headerTitle.textColor = .black
        headerTitle.font = UIFont(name: "Times New Roman", size: sf.w * 0.1)
        headerView.addSubview(headerTitle)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2).isActive = true
        
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        headerTitle.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        headerTitle.bottomAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        headerTitle.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 1).isActive = true
        headerTitle.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier:  0.4).isActive = true
        
        txtEmail = UITextField(frame: CGRect(x: sf.w * 0.1 , y: sf.h * 0.3 ,width: sf.w * 0.8, height: sf.h * 0.08))
        txtPassword = UITextField(frame: CGRect(x: sf.w * 0.1 , y: sf.h * 0.4 ,width: sf.w * 0.8, height: sf.h * 0.08))
        bodyView.addSubview(txtEmail)
        bodyView.addSubview(txtPassword)
        bodyView.translatesAutoresizingMaskIntoConstraints = false
        bodyView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        bodyView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        bodyView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        bodyView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
        
        txtEmail.layer.borderWidth = 1
        txtEmail.layer.cornerRadius = 8
        txtEmail.placeholder = "Email"
        txtEmail.textAlignment = .left
        txtEmail.setLeftPaddingPoints(10)
        txtEmail.backgroundColor = UIColor.white
        txtEmail.textColor = UIColor.blue
        bodyView.addSubview(txtEmail)
        
        txtPassword.placeholder = "password"
        txtPassword.isSecureTextEntry = true
        txtPassword.layer.cornerRadius = 8
        txtPassword.layer.borderWidth = 1
        txtPassword.setLeftPaddingPoints(10)
        txtPassword.backgroundColor = UIColor.white
        txtPassword.textColor = UIColor.blue
        bodyView.addSubview(txtPassword)
        
        btnLogin = UIButton()
        btnRegister = UIButton()
        
        btnLogin.frame = CGRect(x: sf.w * 0.1 , y: sf.h * 0.53 ,width: sf.w * 0.8, height: sf.h * 0.08)
        btnLogin.backgroundColor = UIColor(named: "ButtonColor2")
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.addTarget(self, action: #selector(login), for: .touchUpInside)
        btnLogin.layer.cornerRadius = 20
        
        btnRegister.frame = CGRect(x: sf.w * 0.1 , y: sf.h * 0.65 ,width: sf.w * 0.8, height: sf.h * 0.08)
        btnRegister.backgroundColor = UIColor(named: "ButtonColor1")
        btnRegister.setTitle("Register", for: .normal)
        btnRegister.addTarget(self, action: #selector(register), for: .touchUpInside)
        btnRegister.layer.cornerRadius = 20
        
        bodyView.addSubview(btnLogin)
        bodyView.addSubview(btnRegister)
    }
    @objc func login(){
        print("here")
    }
    
    @objc func register(){
        dismiss(animated: true, completion: nil)
        let ac = RegisterVC()
        self.navigationController?.pushViewController(ac, animated: true)
    }

}
