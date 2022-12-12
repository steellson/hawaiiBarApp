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
    
    let menuDetailTitleLabel         = HWLabel().buildHWMenuDetailTitleLabel()
    let menuDetailImageView          = HWImageView().buildHWMenuDetailImageView()
    let menuDetailDescriptionLabel   = HWLabel().buildHWMenuDetailDescriptionLabel()
    let menuDetailWeightLabel        = HWLabel().buildHWMenuDetailWeightLabel()
    let menuDetailPriceLabel         = HWLabel().buildHWMenuDetailPriceLabel()
    let menuDetailPlusButton         = HWButton().buildHWMenuDetailItemsButton(with: "plus")
    let menuDetailItemsLabel         = HWLabel().buildHWMenuDetailItemsLabel()
    let menuDetailMinusButton        = HWButton().buildHWMenuDetailItemsButton(with: "minus")
    let menuDetailAddButton          = HWButton().buildHWMenuDetailAddButton()
    
    
    
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




