//
//  ViewController.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/26/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    fileprivate let emailTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        return textField
    }()
    
    fileprivate let passwordTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        return textField
    }()
    
    fileprivate let loginButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    fileprivate let createAccountButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Don't have account?", for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    weak var coordinator: AuthCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupEmailTextField()
        setupPasswordTextField()
        setupLoginButton()
        setupCreateAccountButton()
        title = "Login"
    }
    
    fileprivate func setupEmailTextField() {
        view.addSubview(emailTextField)
        emailTextField.placeholder = "Email"
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(view).offset(100)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
        }
    }
    
    fileprivate func setupPasswordTextField() {
        view.addSubview(passwordTextField)
        passwordTextField.placeholder = "Password"
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
        }
    }
    
    fileprivate func setupLoginButton() {
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
        }
        loginButton.addTarget(self, action: #selector(navigateToHomeViewController), for: .touchUpInside)
    }
    
    @objc fileprivate func navigateToHomeViewController() {
        coordinator?.showHome()
    }
 
    fileprivate func setupCreateAccountButton() {
        view.addSubview(createAccountButton)
        createAccountButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(40)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
        }
        createAccountButton.addTarget(self, action: #selector(navigateToRegisterViewController), for: .touchUpInside)
    }
    
    @objc fileprivate func navigateToRegisterViewController() {
        coordinator?.showRegister()
    }
    

}

