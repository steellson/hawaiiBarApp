//
//  MainPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation


//MARK: - MainViewProtocol

protocol MainViewProtocol: AnyObject {
    func success()
    func failure(error: Error)
}


//MARK: - MainPresenterProtocol

protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: RouterProtocol)
    var mainMenuCards: [MainMenuCard]? { get set }
    func getMenuCardsData()
}


//MARK: - MainPresenter

class MainPresenter: MainPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : RouterProtocol?
    let dataManager   : DataManagerProtocol?
    var mainMenuCards : [MainMenuCard]?
    
    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: RouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router     = router
    
        getMenuCardsData()
    }
    
    
    //MARK: - Methods
    
    func getMenuCardsData() {
        dataManager?.getData { [weak self] data in
            guard let self         = self else { return }
            if let data            = data as? [MainMenuCard] {
                self.mainMenuCards = data
                self.view?.success()
            }
        }
    }
}
