//
//  CartPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation


//MARK: - CartPresenterProtocol

protocol CartPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: CartRouterProtocol)
    var cartItems: [CartItem]? { get set }
    func getCartData()
    func cartButtonPressed()
}


//MARK: - CartPresenterImpl

final class CartPresenter: CartPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : CartRouterProtocol?
    let dataManager   : DataManagerProtocol?
    var cartItems     : [CartItem]?
    
    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: CartRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router      = router
    
    }
    
    
    //MARK: - Methods
    
    func getCartData() {
        dataManager?.getData(type: .cartItems) { [weak self] data in
            guard let self         = self else { return }
            if let data            = data as? [CartItem] {
                self.cartItems = data
                self.view?.success()
            }
        }
    }
    
    func cartButtonPressed() {
        guard let cartItems = cartItems else { return }
        router?.initial(with: cartItems)
    }
}
