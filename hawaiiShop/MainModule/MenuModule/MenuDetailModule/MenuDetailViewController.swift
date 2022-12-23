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
    
    let menuDetailTitleLabel         = UILabel(.quickBold20, .black, .center, "Cherry pizza")
    let menuDetailImageView          = UIImageView(UIImage(named: "pizza"), .scaleAspectFit, true)
    let menuDetailDescriptionLabel   = UILabel(.quick18, .black,
                                               .left, "Crunchy dough, cherry tomato, \nProsciutto, spinat and mozarella cheese")
    let menuDetailWeightLabel        = UILabel(.quickSBold18, UIColor.specialGray, .left, "630 g")
    let menuDetailPriceLabel         = UILabel(.quickSBold28, UIColor.specialOrange, .left, "17 $")
    let menuDetailPlusButton         = UIButton().buildMenuDetailItemsButton(with: "plus")
    let menuDetailItemsLabel         = UILabel(.quickBold24, .black, .center, "1")
    let menuDetailMinusButton        = UIButton().buildMenuDetailItemsButton(with: "minus")
    let menuDetailAddButton          = UIButton("Add")
    
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite
        
        view.addSubview(menuDetailTitleLabel)
        view.addSubview(menuDetailImageView)
        view.addSubview(menuDetailDescriptionLabel)
        view.addSubview(menuDetailWeightLabel)
        view.addSubview(menuDetailPriceLabel)
        view.addSubview(menuDetailPlusButton)
        view.addSubview(menuDetailItemsLabel)
        view.addSubview(menuDetailMinusButton)
        view.addSubview(menuDetailAddButton)
        
        menuDetailPlusButton.backgroundColor = .specialOrange
        
        setupLayout()
    }
}


//MARK: - Protocol Extension




