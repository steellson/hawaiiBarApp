//
//  CartEmptyViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import UIKit


//MARK: - CartEmptyController

final class CartEmptyController: MainController {
    
    var presenter: CartPresenterProtocol!
    
    //MARK: - UI Elements
    
    let imageView             = UIImageView(UIImage(named: "basket"), .scaleAspectFit, false)
    let titleLabel            = UILabel(.quickBold24, .black, .center, "No orders yet")
    let subtitleLabel         = UILabel(.quickSBold18, .specialGray, .center, "Hit the orange button down\nbelow to Create an order")
    let createAnOrderButton   = UIButton("Create an order")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {

    }
}


//MARK: - MainController Extension

extension CartEmptyController {
    
    override func setupView() {
            super.setupView()
        
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(createAnOrderButton)
    }
    
    override func setupNavBar() {
        super.setupNavBar()
        
        guard let nc = self.navigationController else { return }
        nc.navigationBar.setupNavigationBar(with: "Basket", on: self)
        nc.navigationBar.addNavBarButton(with: .navBarBackImage!,
                                             target: self,
                                             action: #selector(leftBarButtonDidTapped),
                                             where: .leftSide,
                                             on: self)
    }
    
}


//MARK: - MainViewProtocol Extension

extension CartEmptyController: MainViewProtocol {
    
    func success() {
        //
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
}
