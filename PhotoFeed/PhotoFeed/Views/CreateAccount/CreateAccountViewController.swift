//
//  CreateAccountViewController.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 24/08/22.
//

import UIKit

protocol CreateAccountDisplayable: AnyObject {
    func displaySomething()
}

final class CreateAccountViewController: UIViewController {
    private lazy var contentView = CreateAccountView()
    private let coordinator: CreateAccountCoordinatable

    init(coordinator: CreateAccountCoordinatable) {
      self.coordinator = coordinator
      super.init(nibName: nil, bundle: .main)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CreateAccountViewController: CreateAccountDisplayable {
    func displaySomething() { }
}
