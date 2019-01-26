//
//  ProfileCoordinator.swift
//  Coordinator Example
//
//  Created by Arifin Firdaus on 1/27/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit

class ProfileCooridnator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
       showProfile()
    }
    
    func showProfile() {
        let viewController = ProfileViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showEditProfile() {
        let viewController = EditProfileViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
