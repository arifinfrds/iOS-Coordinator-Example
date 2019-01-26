
//
//  DetailViewController.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/26/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    
    fileprivate let label: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Label"
        return label
    }()
    
    weak var coordinator: HomeCoordinator?
    
    init(withText text: String) {
        super.init(nibName: nil, bundle: nil)
        label.text = text
        title = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
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
