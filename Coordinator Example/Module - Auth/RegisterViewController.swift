//
//  RegisterViewController.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/26/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    fileprivate let emailTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        return textField
    }()
    
    fileprivate let passwordTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        return textField
    }()
    
    fileprivate let registerButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Register", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    weak var coordinator: AuthCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupEmailTextField()
        setupPasswordTextField()
        setupRegisterButton()
        title = "Register"
        view.backgroundColor = .white
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
    
    fileprivate func setupRegisterButton() {
        view.addSubview(registerButton)
        registerButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
        }
    }

}
