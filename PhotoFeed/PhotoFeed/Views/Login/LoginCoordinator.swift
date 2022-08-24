//
//  LoginCoordinator.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 24/08/22.
//

import UIKit

protocol LoginCoordinatorProtocol: AnyObject {
    func start()
}
class LoginCoordinator: LoginCoordinatorProtocol {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = LoginViewController(coordinator: self)
        navigationController.pushViewController(controller, animated: true)
    }
}
