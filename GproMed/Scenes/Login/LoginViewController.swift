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
        gradientLayer.colors = [#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1).cgColor, #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        return gradientLayer
    }()
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "gpromed_icon_large")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let loginButton = ContinueButton(fontSize: 14)
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
        loginButton.setTitle("ENTRAR", for: .normal)
        
        
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
