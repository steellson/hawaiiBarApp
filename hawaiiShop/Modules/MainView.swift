//
//  MainView.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 30.12.2022.
//

import UIKit

//MARK: - MainViewDelegate Protocol

protocol MainViewDelegate: AnyObject {
    func viewDidLoaded() 
}

//MARK: - MainView

class MainView: UIView {
    
    //MARK: Variables
    
    weak var delegate: MainViewDelegate?
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - MainView Extension

@objc extension MainView {
    
    func setupView() {
        
        setupLayout()
    }
    
    func setupLayout() { }
}
