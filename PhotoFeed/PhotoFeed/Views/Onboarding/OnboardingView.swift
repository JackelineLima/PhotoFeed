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
    
    private lazy var createAccountButton: UIButtonFeed = {
        let button = UIButtonFeed()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setupLayout(title: "Criar nova conta")
        return button
    }()
    
    private lazy var logInButton: UIButtonFeed = {
        let button = UIButtonFeed()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setupLayout(style: .buttonWithoutBackground,
                           title: "Entrar")
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        setupView()
        navigation()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func navigation() {
        createAccountButton.setAction { [weak self] in
            self?.delegate?.navigateToCreateAccount()
        }
        
        logInButton.setAction { [weak self] in
            self?.delegate?.navigateToLogin()
        }
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
