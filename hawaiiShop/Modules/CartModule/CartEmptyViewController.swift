//
//  CartEmptyViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

class CartEmptyViewController: UIViewController {
    
    var presenter: CartPresenterProtocol!
    
    //MARK: - UI Elements
    
    let imageView             = UIImageView(UIImage(named: "basket"), .scaleAspectFit, false)
    let titleLabel            = UILabel(.quickBold24, .black, .center, "No orders yet")
    let subtitleLabel         = UILabel(.quickSBold18, UIColor.specialGray,
                                        .center, "Hit the orange button down\nbelow to Create an order")
    let createAnOrderButton   = UIButton("Create an order")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite
        
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(createAnOrderButton)

        setupNavigationBar()
        setupLayout()
    }
    
    private func setupNavigationBar() {
       // navigationController?.navigationBar.setupNavigationBar(self, "Basket")
    }
    
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension

extension CartEmptyViewController: CartViewProtocol {
    
    func success() {
        //
    }
    
    func failure(error: Error) {
        //
    }
    
    
}
