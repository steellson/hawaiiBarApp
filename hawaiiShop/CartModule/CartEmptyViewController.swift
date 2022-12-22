//
//  CartEmptyViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

class CartEmptyViewController: UIViewController {
    
    //MARK: - UI Elements
    
    let imageView             = UIImageView(UIImage(named: "basket"), .scaleAspectFit, false)
    let titleLabel            = UILabel(UIFont(name: "Quicksand-Bold", size: 24)!, .black, .center, "No orders yet")
    let subtitleLabel         = UILabel(UIFont(name: "Quicksand-SemiBold", size: 18)!, UIColor(red: 0.325, green: 0.325, blue: 0.325, alpha: 1),
                                        .center, "Hit the orange button down\nbelow to Create an order")
    let createAnOrderButton   = UIButton("Create an order")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(createAnOrderButton)

        setupNavigationBar()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Basket"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension


