//
//  EditProfileViewController.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/27/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    weak var coordinator: ProfileCooridnator?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Profile"
        view.backgroundColor = .white
    }
    
}
