//
//  LoginCoordinator.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 24/08/22.
//

import UIKit

protocol OnboardingCoordinatorProtocol: AnyObject {
    func start()
}
class OnboardingCoordinator: OnboardingCoordinatorProtocol {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = OnboardingViewController(coordinator: self)
        navigationController.pushViewController(controller, animated: true)
    }
}
