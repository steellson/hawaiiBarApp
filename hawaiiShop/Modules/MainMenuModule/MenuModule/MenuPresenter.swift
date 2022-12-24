//
//  MenuPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation


//MARK: - MenuPresenterProtocol

protocol MenuPresenterProtocol: AnyObject {
    init(view: MenuViewProtocol, dataManager: DataManagerProtocol, router: MainRouterProtocol)
    var menuCardItems: [MenuCard]? { get set }
    func getAllPositions(_ : [MenuCard]?)
}


//MARK: - MainPresenter

class MenuPresenter: MenuPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MenuViewProtocol?
    let router        : MainRouterProtocol?
    let dataManager   : DataManagerProtocol?
    var menuCardItems : [MenuCard]?
    
    
    //MARK: - Init
    
    required init(view: MenuViewProtocol, dataManager: DataManagerProtocol, router: MainRouterProtocol) {
        self.view          = view
        self.dataManager   = dataManager
        self.router        = router
        
        
        getAllPositions(_ : menuCardItems)
    }
    
    
    //MARK: - Methods
    
    func getAllPositions(_ : [MenuCard]?) {
        dataManager?.getData(type: .menuCards) { [weak self] data in
            guard let self         = self else { return }
            if let data            = data as? [MenuCard] {
                self.menuCardItems = data
                self.view?.success()
            }
        }
    }
}
