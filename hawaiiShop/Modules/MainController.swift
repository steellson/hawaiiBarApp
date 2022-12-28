//
//  MainController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.12.2022.
//

import UIKit

//MARK: - MainController

class MainController: UIViewController {
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupNavBar()
        setupCollectionView()
        setupLayout()
    }
    
}

//MARK: MainController Methods Extension

@objc extension MainController {
    
     func setupView() {
         
        view.backgroundColor = .specialWhite
        
    }
    
     func setupNavBar() { }
    
     func setupCollectionView() { }

     func setupLayout() { }
}
