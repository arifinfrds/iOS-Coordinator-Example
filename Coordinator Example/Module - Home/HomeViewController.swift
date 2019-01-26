//
//  HomeViewController.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/26/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

class HomeViewController: UIViewController {
    
    fileprivate let tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        return tableView
    }()
    
    fileprivate let cellId = "cellId"
    
    weak var coordinator: HomeCoordinator?
    
    fileprivate let dataSource = Observable.of(["a", "b", "c", "d", "a", "b", "c", "d"])
    fileprivate let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCell()
        setupTableView()
        setupNavigationBar()
    }
    
    fileprivate func setupTableView() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        setupTableViewRxItems()
        setupTableViewRxModelSelected()
    }
    
    private func setupCell() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    fileprivate func setupTableViewRxItems() {
        dataSource.asDriver(onErrorJustReturn: [])
            .drive(tableView.rx.items(cellIdentifier: cellId, cellType: UITableViewCell.self)) { (row, element, cell) in
                cell.textLabel?.text = element
            }
            .disposed(by: disposeBag)
    }
    
    fileprivate func setupTableViewRxModelSelected() {
        tableView.rx.modelSelected(String.self)
            .subscribe(onNext: { [weak self] element in
                self?.coordinator?.showDetail(with: element)
            })
            .disposed(by: disposeBag)
    }
    
    fileprivate func setupNavigationBar() {
        title = "Home"
        setupProfileBarButtonItem()
        setupSettingsBarButtonItem()
    }
    
    fileprivate func setupProfileBarButtonItem() {
        let barButtonItem = UIBarButtonItem(title: "Profile",
                                            style: .plain,
                                            target: self,
                                            action: #selector(navigateToProfileViewController))
        navigationItem.leftBarButtonItem = barButtonItem
    }
    
    @objc fileprivate func navigateToProfileViewController() {
        coordinator?.showProfile()
    }
    
    fileprivate func setupSettingsBarButtonItem() {
        let barButtonItem = UIBarButtonItem(title: "Settings",
                                            style: .plain,
                                            target: self,
                                            action: #selector(navigateToSettingsViewController))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc fileprivate func navigateToSettingsViewController() {
        coordinator?.showSettings()
    }
    
    
}
