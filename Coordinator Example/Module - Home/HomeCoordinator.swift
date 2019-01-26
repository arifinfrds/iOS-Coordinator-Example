//
//  HomeCoordinator.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/26/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit

class HomeCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showDetail(with text: String) {
        let viewController = DetailViewController(withText: text)
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showProfile() {
        let coordinator = ProfileCooridnator(navigationController: navigationController)
        childCoordinators.append(coordinator)
        
        let viewController = ProfileViewController()
        viewController.coordinator = coordinator
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showSettings() {
        let coordinator = SettingsCoordinator(navigationController: navigationController)
        childCoordinators.append(coordinator)
        
        let viewController = SettingsViewController()
        viewController.coordinator = coordinator
        navigationController.pushViewController(viewController, animated: true)
    }
}
