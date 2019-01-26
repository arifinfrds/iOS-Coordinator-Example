//
//  ProfileViewController.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/27/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    weak var coordinator: ProfileCooridnator?
    
    fileprivate let imageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.backgroundColor = .yellow
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupImageView()
        title = "Profile"
        setupEditProfileBarButtonItem()
    }
    
    fileprivate func setupImageView() {
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view).offset(100)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
            make.height.equalTo(200)
        }
    }
    
    fileprivate func setupEditProfileBarButtonItem() {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .edit,
                                            target: self,
                                            action: #selector(navigateToEditProfileViewController))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc fileprivate func navigateToEditProfileViewController() {
        coordinator?.showEditProfile()
    }
    
    
    
}
