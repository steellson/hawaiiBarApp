//
//  OrdersHistoryEmptyViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 19.12.2022.
//

import UIKit

//MARK: - OrderHistoryEmptyViewImpl

final class OrdersHistoryEmptyView: MainView {
    
    var presenter: OrdersHistoryPresenter!
    
    //MARK: - UI Elements
    
    let imageView             = UIImageView(UIImage(named: "search"), .scaleAspectFit, false)
    let titleLabel            = UILabel(.quickBold24, .black, .center, "No history yet")
    let subtitleLabel         = UILabel(.quickSBold18, UIColor.specialGray, .center, "Hit the orange button down\nbelow to Create an order")
    let createAnOrderButton   = UIButton("Create an order")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    //MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {

    }

}


//MARK: - MainView Extension

extension OrdersHistoryEmptyView {
    
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
        nc.navigationBar.setupNavigationBar(with: "Orders History", on: self)
        nc.navigationBar.addNavBarButton(with: .navBarBackImage!,
                                             target: self,
                                             action: #selector(leftBarButtonDidTapped),
                                             where: .leftSide,
                                             on: self)
    }
}

//MARK: - MainViewProtocol Extension

extension OrdersHistoryEmptyView: MainViewProtocol {
    func success() {
        //
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
}

