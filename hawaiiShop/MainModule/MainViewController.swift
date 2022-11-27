//
//  MainViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    let searchField = HWTextField().buildHWSearchField()
    
    
    
    
//MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(searchField)
        
        setupNavigationBar()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "person"), style: .plain, target: self, action: #selector(barButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        let rightBarItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(barButtonDidTapped))
        navigationItem.rightBarButtonItem = rightBarItem
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)

        navigationItem.title = "Hawaii Bar"
    }
    
    
//MARK: - Buttons Action
    
    @objc private func barButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}
