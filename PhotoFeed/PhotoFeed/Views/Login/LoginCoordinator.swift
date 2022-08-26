//
//  LoginCoordinator.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 25/08/22.
//

import UIKit

protocol LoginCoodinatorProtocol: AnyObject {
    func start()
}

class LoginCoodinator: LoginCoodinatorProtocol {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = LoginViewController(coodinator: self)
        navigationController.pushViewController(controller, animated: true)
    }
}
