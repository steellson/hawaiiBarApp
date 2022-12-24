//
//  MenuDetailPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation


//MARK: - MenuDetailPresenterProtocol

protocol MenuDetailPresenterProtocol: AnyObject {
    init(view: MenuDetailViewProtocol, dataManager: DataManagerProtocol, router: MainRouterProtocol)
    var item: MenuDetailCard? { get set }
    func getItemInfo()
    func plusButtonTapped()
    func minusButtonTapped()
    func addButtonTapped()
}


//MARK: - MenuDetailPresenter

class MenuDetailPresenter: MenuDetailPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MenuDetailViewProtocol?
    let router        : MainRouterProtocol?
    let dataManager   : DataManagerProtocol?
    var item          : MenuDetailCard?
    
    //MARK: - Init
    
    required init(view: MenuDetailViewProtocol, dataManager: DataManagerProtocol, router: MainRouterProtocol) {
        self.view          = view
        self.dataManager   = dataManager
        self.router        = router
        
        getItemInfo()
    }
    
    
    //MARK: - Methods
    
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
