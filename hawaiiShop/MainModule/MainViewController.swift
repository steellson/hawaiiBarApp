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
    }

//MARK: - Setup Layout
    
    private func authorizationLabelLayout() {
        authorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authorizationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            authorizationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
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
    
}

//MARK: Extension

extension MainViewController: MainViewProtocol {
    func showCurrent() {
        //
    }
}
