//
//  OrdersHistoryViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit

class OrdersHistoryViewController: UIViewController {
    
    
    //MARK: - UI Elements
    
    
    
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        
        
        
        setupNavigationBar()
        setupOrdersCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Orders History"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    private func setupOrdersCollectionView() {
        
    }
    
   
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }

}


//MARK: - Protocol Extension





//MARK: - OrdersCollectionView DataSource Extension





//MARK: - OrdersCollectionView FlowLayoutDelegate Extension




