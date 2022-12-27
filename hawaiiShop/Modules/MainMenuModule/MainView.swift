//
//  MainView.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.12.2022.
//

import UIKit

//MARK: - MainView

class MainView: UIViewController {
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupNavBar()
        setupLayout()
    }
    
}

//MARK: MainView Methods Extension

@objc extension MainView {
    
     func setupView() {
         
        view.backgroundColor = .specialWhite
        
    }
    
     func setupNavBar() { }

     func setupLayout() { }
}
