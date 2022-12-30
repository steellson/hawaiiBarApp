//
//  MenuDetailViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 08.12.2022.
//

import UIKit


//MARK: MenuDetailController

final class MenuDetailController: MainController {
    
    var presenter: MainMenuPresenterProtocol!
    
    //MARK: UI Elements
    
    let menuDetailTitleLabel         = UILabel(.quickBold20, .black, .center)
    let menuDetailImageView          = UIImageView(.scaleAspectFit, true)
    var menuDetailDescriptionLabel   = UILabel(.quick18, .black, .left)
    var menuDetailWeightLabel        = UILabel(.quickSBold18, UIColor.specialGray, .left)
    let menuDetailPriceLabel         = UILabel(.quickSBold28, UIColor.specialOrange, .left)
    let itemPicker                   = ItemPicker()
    let menuDetailAddButton          = UIButton("Add")
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupFrame()
    }
    
//MARK: Setup Controller
    
    private func setupFrame() {
        view.frame = CGRect(x: 0, y: UIScreen.main.bounds.height / 6 * 1.5,
                            width: self.view.bounds.width, height: UIScreen.main.bounds.height / 5 * 5)
        view.layer.cornerRadius  = 40
        view.layer.masksToBounds = true
    }
    
    
    //MARK: - AddButton Action
    
    @objc private func addButtonDidTapped() {
        presenter.addButtonTapped()
    }
}


//MARK: - MainController Extension

extension MenuDetailController {
    
    override func setupView() {
        super.setupView()
                
        view.addSubview(menuDetailTitleLabel)
        view.addSubview(menuDetailImageView)
        view.addSubview(menuDetailDescriptionLabel)
        view.addSubview(menuDetailWeightLabel)
        view.addSubview(menuDetailPriceLabel)
        view.addSubview(itemPicker)
        view.addSubview(menuDetailAddButton)
    }
    
    
}


//MARK: - MainViewProtocol Extension

extension MenuDetailController: MainViewProtocol {
    
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
