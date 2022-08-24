//
//  ViewController.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 24/08/22.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    private let loginView = LoginView()
    private let coordinator: LoginCoordinatorProtocol

    init(coordinator: LoginCoordinatorProtocol) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        super.loadView()
        view = loginView
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

