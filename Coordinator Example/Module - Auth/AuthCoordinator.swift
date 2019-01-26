//
//  AuthCoordinator.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/27/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit

class AuthCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        showLogin()
    }
    
    func showLogin() {
        let viewController = LoginViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showRegister() {
        let viewController = RegisterViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showHome() {
        let coordinator = HomeCoordinator(navigationController: navigationController)
        let viewController = HomeViewController()
        viewController.coordinator = coordinator
        navigationController.pushViewController(viewController, animated: true)
        
        childCoordinators.append(coordinator)
    }
}

