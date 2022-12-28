//
//  ProfilePresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - ProfilePresenterProtocol

protocol ProfilePresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: ProfileRouterProtocol)
    var menuItems: [String] { get set }
    
}


//MARK: - ProfilePresenterImpl

final class ProfilePresenter: ProfilePresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : ProfileRouterProtocol?
    let dataManager   : DataManagerProtocol?
    var menuItems     = [                           // Scare HARDCODE
        "Orders History",
        "Settings",
        "FAQ",
        "Help"
    ]

    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: ProfileRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router      = router
    
    }
    
    
    //MARK: - Methods
    
   
}
