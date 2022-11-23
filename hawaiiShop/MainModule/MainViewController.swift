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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupController()
    }
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(authorizationLabel)
        authorizationLabelLayout()
    }

//MARK: - Setup Layout
    
    private func authorizationLabelLayout() {
        authorizationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authorizationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            authorizationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
}

//MARK: Extension

extension MainViewController: MainViewProtocol {
    func showCurrent() {
        //
    }
}
