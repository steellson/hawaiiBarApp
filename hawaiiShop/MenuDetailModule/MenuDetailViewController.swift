//
//  MenuDetailViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 08.12.2022.
//

import Foundation
import UIKit

class MenuDetailViewController: UIViewController {
    
    //MARK: UI Elements
    
    let menuDetailTitleLabel         = UILabel(UIFont(name: "Quicksand-Bold", size: 20)!, .black, .center, "Cherry pizza")
    let menuDetailImageView          = UIImageView(UIImage(named: "pizza"), .scaleAspectFit, true)
    let menuDetailDescriptionLabel   = UILabel(UIFont(name: "Quicksand", size: 18)!,
                                               .black, .left, "Crunchy dough, cherry tomato, \nProsciutto, spinat and mozarella cheese")
    
    let menuDetailWeightLabel        = UILabel(UIFont(name: "Quicksand-SemiBold", size: 18)!,
                                               UIColor(red: 0.325, green: 0.325, blue: 0.325, alpha: 1), .left, "630 g")
    
    let menuDetailPriceLabel         = UILabel(UIFont(name: "Quicksand-SemiBold", size: 28)!,
                                               UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1), .left, "17 $")
    
    let menuDetailPlusButton         = UIButton().buildMenuDetailItemsButton(with: "plus")
    let menuDetailItemsLabel         = UILabel(UIFont(name: "Quicksand-SemiBold", size: 24)!, .black, .center, "1")
    let menuDetailMinusButton        = UIButton().buildMenuDetailItemsButton(with: "minus")
    let menuDetailAddButton          = UIButton("Add")
    
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(menuDetailTitleLabel)
        view.addSubview(menuDetailImageView)
        view.addSubview(menuDetailDescriptionLabel)
        view.addSubview(menuDetailWeightLabel)
        view.addSubview(menuDetailPriceLabel)
        view.addSubview(menuDetailPlusButton)
        view.addSubview(menuDetailItemsLabel)
        view.addSubview(menuDetailMinusButton)
        view.addSubview(menuDetailAddButton)
        
        menuDetailPlusButton.backgroundColor = UIColor(red: 253/255, green: 201/255, blue: 9/255, alpha: 1)
        
        setupLayout()
    }
}


//MARK: - Protocol Extension




