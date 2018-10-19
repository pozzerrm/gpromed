//
//  LoginViewController.swift
//  GproMed
//
//  Created by Victor Magalhaes on 18/10/2018.
//  Copyright © 2018 GproMed. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private let backgoundGradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = UIScreen.main.bounds
        gradientLayer.colors = [#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).cgColor, #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        return gradientLayer
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
        button.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 14)
        button.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.5
        button.layer.opacity = 0.8
        button.layer.cornerRadius = 5
        button.backgroundColor = .white
        return button
    }()
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "gpromed_icon_large")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let emailTextField = LoginTextField(fontSize: 18)
    private let passwordTextField = LoginTextField(fontSize: 18)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        
    }
    
    private func setupLayout() {
        view.layer.addSublayer(backgoundGradientLayer)
        
        view.addSubview(logoImageView)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        
        //TODO : Implementar testes para set de UI
        emailTextField.placeholder = "Insira seu email"
        passwordTextField.placeholder = "Insira sua senha"
        loginButton.setTitle("FAZER LOGIN", for: .normal)
        
        
        //TODO: Implementar screenbased para atuar sobre todos modelos de tela
        NSLayoutConstraint.activate([
            
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            logoImageView.heightAnchor.constraint(equalToConstant: 150),
            
            emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: view.frame.height * 0.10),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45),
            
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            ])
    }

}

