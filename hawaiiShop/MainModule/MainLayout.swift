//
//  MainLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit

extension MainViewController {
    
    func setupLayout() {
        authorizationLabelLayout()
        authViewLayout()
        authorizationModeSegmentLayout()
        loginFieldLayout()
        passwordFieldLayout()
        enterButtonLayout()
        helpButtonLayout()
        bottomOrangeViewLayout()
    }
    
    
//MARK: - Methods
    
    private func authorizationLabelLayout() {
        authorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authorizationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
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
            authorizationModeSegment.topAnchor.constraint(equalTo: authView.topAnchor, constant: 20),
            authorizationModeSegment.centerXAnchor.constraint(equalTo: authView.centerXAnchor),
            authorizationModeSegment.leftAnchor.constraint(equalTo: authView.leftAnchor, constant: 18),
            authorizationModeSegment.rightAnchor.constraint(equalTo: authView.rightAnchor, constant: -18)
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
            enterButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 135),
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
            bottomOrangeView.heightAnchor.constraint(equalToConstant: 1.5)
        ])
    }
}
