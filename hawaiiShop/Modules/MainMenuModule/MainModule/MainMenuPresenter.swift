//
//  MainManuPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation

//MARK: - MainMenuPresenterProtocol

protocol MainMenuPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: MainMenuRouterProtocol)
    
    var mainMenuCards: [MainMenuCard]? { get set }
    var menuCardItems: [MenuCard]? { get set }
    var item: MenuDetailCard? { get set }

    func getMenuCardsData()
    func cardDidTapped()
    func cartDidTapped()
    func profileDidTapped()
    
    func getAllPositions(_ : [MenuCard]?)
    func backButtonDidTapped()
    
    func getItemInfo()
    func plusButtonTapped()
    func minusButtonTapped()
    func addButtonTapped()
}


//MARK: - MainPresenter

final class MainMenuPresenter: MainMenuPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : MainMenuRouterProtocol?
    let dataManager   : DataManagerProtocol?
    
    var mainMenuCards : [MainMenuCard]?
    var menuCardItems : [MenuCard]?
    var item          : MenuDetailCard?
    
    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: MainMenuRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router      = router
        
        getMenuCardsData()
    }
    
    
    //MARK: - Main Menu Methods
    
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
    
    func cartDidTapped() {
        //
    }
    
    func profileDidTapped() {
        //
    }
    
    
    //MARK: - Menu Methods
    
    func getAllPositions(_ : [MenuCard]?) {
        dataManager?.getData(type: .menuCards) { [weak self] data in
            guard let self         = self else { return }
            if let data            = data as? [MenuCard] {
                self.menuCardItems = data
                self.view?.success()
            }
        }
    }
    
    func backButtonDidTapped() {
        if let router = router {
            router.goBack()
        }
    }
    
    
    //MARK: - MenuDetail Methods
    
    func getItemInfo() {
        dataManager?.getData(type: .itemCard) { [weak self] data in
            guard let self         = self else { return }
            if let data            = data as? [MenuDetailCard] {
                if !data.isEmpty {
                    self.item = data[0]
                    self.view?.success()
                } else {
                    print("Data is empty")
                }
            }
        }
    }
    
    func plusButtonTapped() {
        //
    }
    
    func minusButtonTapped() {
        //
    }
    
    func addButtonTapped() {
        //
    }
}
