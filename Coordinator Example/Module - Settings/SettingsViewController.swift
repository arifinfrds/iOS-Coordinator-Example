//
//  SettingsViewController.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/26/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    
    weak var coordinator: SettingsCoordinator?
    
    fileprivate let label: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "This is Settings"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Settings"
        setupLabel()
    }
    
    fileprivate func setupLabel() {
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(view).offset(100)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
        }
    }
    
    
    
    
}
