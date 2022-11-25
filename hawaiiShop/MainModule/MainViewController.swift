//
//  MainViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    
    private let authorizationLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 28)
        label.textAlignment = .center
        label.contentMode = .center
        label.numberOfLines = 0
        label.text = "Authorization"
        return label
    }()
    
    private let authView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        view.layer.cornerRadius = 16
        //        view.layer.shadowOffset = CGSize(width: 5, height: 10)
        //        view.layer.shadowRadius = .infinity
        //        view.layer.shadowColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        return view
    }()
    
    private lazy var authorizationModeSegment: UISegmentedControl = {
        let items = ["Sign Up", "Login"]
        let segment = UISegmentedControl(items: items)
        segment.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Arial", size: 18)!], for: .normal)
        segment.backgroundColor = .white
        segment.isMomentary = false
        return segment
    }()
    
    private lazy var loginField: UITextField = {
        let field = UITextField()
        field.placeholder = "   Phone number"
        field.layer.cornerRadius = 20
        field.layer.borderWidth = 0.5
        field.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        field.contentMode = .scaleAspectFit
        return field
    }()
    
    private lazy var passwordField: UITextField = {
        let field = UITextField()
        field.placeholder = "   SMS code"
        field.layer.cornerRadius = 20
        field.layer.borderWidth = 0.5
        field.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        field.contentMode = .left
        return field
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.setTitle("Log in", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.layer.cornerRadius = 16
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    //MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(authorizationLabel)
        authorizationLabelLayout()
        
        view.addSubview(authView)
        authViewLayout()
        
        view.addSubview(authorizationModeSegment)
        authorizationModeSegmentLayout()
        
        view.addSubview(loginField)
        loginFieldLayout()
        
        view.addSubview(passwordField)
        passwordFieldLayout()
        
        view.addSubview(loginButton)
        loginButtonLayout()
    }
    
    //MARK: - Setup Layout
    
    private func authorizationLabelLayout() {
        authorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authorizationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            authorizationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func authViewLayout() {
        authView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authView.topAnchor.constraint(equalTo: authorizationLabel.bottomAnchor, constant: 120),
            authView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            authView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            authView.widthAnchor.constraint(equalToConstant: 375)
        ])
    }
    
    private func authorizationModeSegmentLayout() {
        authorizationModeSegment.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authorizationModeSegment.topAnchor.constraint(equalTo: authView.topAnchor, constant: 40),
            authorizationModeSegment.centerXAnchor.constraint(equalTo: authView.centerXAnchor),
            authorizationModeSegment.leftAnchor.constraint(equalTo: authView.leftAnchor, constant: 20),
            authorizationModeSegment.rightAnchor.constraint(equalTo: authView.rightAnchor, constant: -20)
        ])
    }
    
    private func loginFieldLayout() {
        loginField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginField.topAnchor.constraint(equalTo: authorizationModeSegment.bottomAnchor, constant: 105),
            loginField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginField.widthAnchor.constraint(equalToConstant: 340),
            loginField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func passwordFieldLayout() {
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 25),
            passwordField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordField.widthAnchor.constraint(equalToConstant: 340),
            passwordField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func loginButtonLayout() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 120),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 345),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}

//MARK: Extension

extension MainViewController: MainViewProtocol {
    func showCurrent() {
        //
    }
}
