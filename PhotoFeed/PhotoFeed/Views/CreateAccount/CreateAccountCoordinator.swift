//
//  CreateAccountCoordinator.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 24/08/22.
//

import UIKit

protocol CreateAccountCoordinatable: AnyObject {
    func start()
}

final class CreateAccountCoordinator {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

extension CreateAccountCoordinator: CreateAccountCoordinatable {
    
    func start() {
        let controller = CreateAccountViewController(coordinator: self)
        navigationController.pushViewController(controller, animated: true)
    }
}
