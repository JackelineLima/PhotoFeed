//
//  LoginView.swift
//  PhotoFeed
//
//  Created by Jackeline Pires De Lima on 24/08/22.
//

import Foundation
import UIKit

protocol OnboardingViewDelegate: AnyObject {
    func navigateToLogin()
    func navigateToCreateAccount()
}

final class OnboardingView: UIView {
    
    weak var delegate: OnboardingViewDelegate?
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.spacing = 62.0
        return stackView
    }()
    
    private lazy var logoFeedImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "photoFeed")
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var createAccountButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Criar nova conta", for: .normal)
        button.backgroundColor = .init(rgb: 0xEFA85C)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFontStyle.customFont(name: .f18PrimaryMedium)
        button.addTarget(self, action: #selector(navigateToCreateAccount), for: .touchUpInside)
        return button
    }()
    
    private lazy var logInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(UIColor.init(rgb: 0xEFA85C), for: .normal)
        button.titleLabel?.font = UIFontStyle.customFont(name: .f18PrimaryMedium)
        button.addTarget(self, action: #selector(navigateToLogin), for: .touchUpInside)
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func navigateToLogin() {
        delegate?.navigateToLogin()
    }
    
    @objc func navigateToCreateAccount() {
        delegate?.navigateToCreateAccount()
    }
}

extension OnboardingView: ViewCodable {
    func buildViewHierarchy() {
        addSubview(stackView)
        stackView.addArrangedSubview(logoFeedImageView)
        stackView.addArrangedSubview(createAccountButton)
        stackView.addArrangedSubview(logInButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            
            createAccountButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            createAccountButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            createAccountButton.heightAnchor.constraint(equalToConstant: 47),
            
            logInButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            logInButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            logInButton.heightAnchor.constraint(equalToConstant: 47),
        ])
    }
    
    func setupAdditionalConfiguration() {
        stackView.setCustomSpacing(16, after: createAccountButton)
    }
}
