//
//  MainPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation


//MARK: - MainPresenterProtocol

protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: MainRouterProtocol)
    var mainMenuCards: [MainMenuCard]? { get set }
    func getMenuCardsData()
    func cardDidTapped()
}


//MARK: - MainPresenter

class MainPresenter: MainPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : MainRouterProtocol?
    let dataManager   : DataManagerProtocol?
    var mainMenuCards : [MainMenuCard]?
    
    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: MainRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router     = router
    
        getMenuCardsData()
    }
    
    
    //MARK: - Methods
    
    func getMenuCardsData() {
        dataManager?.getData(type: .mainMenuCards) { [weak self] data in
            guard let self         = self else { return }
            if let data            = data as? [MainMenuCard] {
                self.mainMenuCards = data
                self.view?.success()
            }
        }
    }
    
    func cardDidTapped() {
        if let router = router {
            router.showMenuViewController()
        }
    }
}
