//
//  LoginViewController.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 24/08/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    private let loginView = LoginView()
    private let coodinator: LoginCoodinatorProtocol
    
    init(coodinator: LoginCoodinatorProtocol) {
        self.coodinator = coodinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func loadView() {
        super.loadView()
        view = loginView
    }
}
