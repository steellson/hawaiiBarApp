//
//  MainViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    
    private let authorizationLabel = HWLabel().buildHWAuthorizationLabel()
    private let authView = HWView().buildHWAuthView()
    
    private lazy var authorizationModeSegment: UISegmentedControl = {
        let items = ["Sign Up", "Login"]
        let segment = UISegmentedControl(items: items)
        segment.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Arial", size: 18)!], for: .normal)
        segment.backgroundColor = .white
        segment.isMomentary = false
        return segment
    }()
    
    private let loginField = HWTextField().buildHWLoginField()
    private let passwordField = HWTextField().buildHWPasswordSMSField()
    private let enterButton = HWButton().buildHWEnterButton()
    private let helpButton = HWButton().buildHWHelpButton()
    private let bottomOrangeView = HWView().buildHWOrangeView()
    
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
        
        view.addSubview(enterButton)
        enterButtonLayout()
        
        view.addSubview(helpButton)
        helpButtonLayout()
        
        view.addSubview(bottomOrangeView)
        bottomOrangeViewLayout()
    }
    
    //MARK: - Setup Layout
    
    private func authorizationLabelLayout() {
        authorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authorizationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
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
    
    private func enterButtonLayout() {
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            enterButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 120),
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: 345),
            enterButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func helpButtonLayout() {
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            helpButton.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 50),
            helpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helpButton.widthAnchor.constraint(equalToConstant: 300),
            helpButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func bottomOrangeViewLayout() {
        bottomOrangeView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomOrangeView.topAnchor.constraint(equalTo: helpButton.bottomAnchor, constant: 2),
            bottomOrangeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomOrangeView.widthAnchor.constraint(equalToConstant: 90),
            bottomOrangeView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}

//MARK: Extension

extension MainViewController: MainViewProtocol {
    func showCurrent() {
        //
    }
}
