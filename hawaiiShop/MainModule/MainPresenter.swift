//
//  MainPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.11.2022.
//

import Foundation

//MARK: - Protocols

protocol MainViewProtocol: AnyObject {
    func showCurrent()
}

protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol)
    func presentCurrent()
}

//MARK: - Main Presenter

class MainPresenter: MainPresenterProtocol {
    
    weak var view: MainViewProtocol!
    
    required init(view: MainViewProtocol) {
        self.view = view
    }
    
    func presentCurrent() {
        //
    }
    
    
}
