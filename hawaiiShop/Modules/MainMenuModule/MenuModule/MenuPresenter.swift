//
//  MenuPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation


//MARK: - MenuViewProtocol

protocol MenuViewProtocol: AnyObject {
    func success()
    func error(error: Error)
}


//MARK: - MenuPresenterProtocol

protocol MenuPresenterProtocol: AnyObject {
    init(view: MenuViewProtocol, dataManager: DataManagerProtocol, router: RouterProtocol, menuCardItems: [MenuCard]?)
    var menuCardItems: [MenuCard]? { get set }
    func getAllPositions(_ : [MenuCard]?)
}


//MARK: - MainPresenter

class MenuPresenter: MenuPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MenuViewProtocol?
    let router        : RouterProtocol?
    let dataManager   : DataManagerProtocol?
    var menuCardItems : [MenuCard]?
    
    
    //MARK: - Init
    
    required init(view: MenuViewProtocol, dataManager: DataManagerProtocol, router: RouterProtocol, menuCardItems: [MenuCard]?) {
        self.view          = view
        self.dataManager   = dataManager
        self.router        = router
        self.menuCardItems = menuCardItems
        
        getAllPositions(_ : menuCardItems)
    }
    
    
    //MARK: - Methods
    
    func getAllPositions(_ : [MenuCard]?) {
        //
    }
}
