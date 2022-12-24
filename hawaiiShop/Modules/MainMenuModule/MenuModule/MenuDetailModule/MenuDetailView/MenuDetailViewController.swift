//
//  MenuDetailViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 08.12.2022.
//

import Foundation
import UIKit


//MARK: - MenuViewProtocol

protocol MenuDetailViewProtocol: AnyObject {
    func success()
    func failure(error: Error)
}


//MARK: MenuDetailViewImpl

class MenuDetailViewController: UIViewController {
    
    var presenter: MenuDetailPresenterProtocol!
    
    //MARK: UI Elements
    
    let menuDetailTitleLabel         = UILabel(.quickBold20, .black, .center)
    let menuDetailImageView          = UIImageView(.scaleAspectFit, true)
    var menuDetailDescriptionLabel   = UILabel(.quick18, .black,
                                               .left)
    var menuDetailWeightLabel        = UILabel(.quickSBold18, UIColor.specialGray, .left)
    let menuDetailPriceLabel         = UILabel(.quickSBold28, UIColor.specialOrange, .left)
    let menuDetailPlusButton         = UIButton().buildMenuDetailItemsButton(with: "plus")
    let menuDetailItemsLabel         = UILabel(.quickBold24, .black, .center)
    let menuDetailMinusButton        = UIButton().buildMenuDetailItemsButton(with: "minus")
    let menuDetailAddButton          = UIButton("Add")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view.frame = CGRect(x: 0, y: UIScreen.main.bounds.height / 6 * 1.5,
                            width: self.view.bounds.width, height: UIScreen.main.bounds.height / 5 * 5)
        view.layer.cornerRadius  = 40
        view.layer.masksToBounds = true
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite
        
        menuDetailItemsLabel.text = "1"
        menuDetailPlusButton.backgroundColor = .specialOrange
        menuDetailAddButton.addTarget(self, action: #selector(addButtonDidTapped), for: .touchUpInside)

        view.addSubview(menuDetailTitleLabel)
        view.addSubview(menuDetailImageView)
        view.addSubview(menuDetailDescriptionLabel)
        view.addSubview(menuDetailWeightLabel)
        view.addSubview(menuDetailPriceLabel)
        view.addSubview(menuDetailPlusButton)
        view.addSubview(menuDetailItemsLabel)
        view.addSubview(menuDetailMinusButton)
        view.addSubview(menuDetailAddButton)
                
        setupLayout()
    }
    
    //MARK: - AddButton Action
    
    @objc private func addButtonDidTapped() {
        presenter.addButtonTapped()
    }
}


//MARK: - Protocol Extension

extension MenuDetailViewController: MenuDetailViewProtocol {
    
    func success() {
        DispatchQueue.main.async { [weak self] in
            guard let self                       = self else { return }
            self.menuDetailTitleLabel.text       = self.presenter.item?.titleLabel
            self.menuDetailImageView.image       = self.presenter.item?.imageView?.image
            self.menuDetailDescriptionLabel.text = self.presenter.item?.descriptionLabel
            self.menuDetailWeightLabel.text      = self.presenter.item?.weightLabel
            self.menuDetailPriceLabel.text       = self.presenter.item?.priceLabel
        }
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
}
