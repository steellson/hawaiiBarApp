//
//  MenuViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 06.12.2022.
//

import UIKit


//MARK: - MenuController

final class MenuController: MainController {
    
    var presenter: MainMenuPresenterProtocol!
    
    //MARK: - UI Elements
    
    var menuCollectionView    : UICollectionView!
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
//MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {
        presenter.backButtonDidTapped()
    }
    
    @objc private func rightBarButtonDidTapped() {
        
    }
}

//MARK: - MainController Extension

extension MenuController {
    
    override func setupView() {
        super.setupView()
        
        setupCollectionView()
    }
    
    override func setupNavBar() {
        super.setupNavBar()
       
        guard let nc = self.navigationController else { return }
        nc.navigationBar.setupNavigationBar(with: "", on: self)
        nc.navigationBar.addNavBarButton(with: .navBarBackImage!,
                                             target: self,
                                             action: #selector(leftBarButtonDidTapped),
                                             side: .leftSide,
                                             on: self)
        nc.navigationBar.addNavBarButton(with: .cartNavBarImage!,
                                         target: self,
                                         action: #selector(rightBarButtonDidTapped),
                                         side: .rightSide,
                                         on: self)
    }
    
    override func setupCollectionView() {
        super.setupCollectionView()
        
        let layout = UICollectionViewFlowLayout().buildFlowLayout(.vertical)
        
        menuCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        menuCollectionView.backgroundColor = .specialWhite
        menuCollectionView.dataSource      = self
        menuCollectionView.delegate        = self
        menuCollectionView.register(MenuCardCell.self, forCellWithReuseIdentifier: Resources.Identifiers.menuCardCell.rawValue)

        view.addSubview(menuCollectionView)
    }
}


//MARK: - MenuViewProtocol Extension

extension MenuController: MainViewProtocol {
    
    func success() {
        if let menuCollectionView = menuCollectionView {
            menuCollectionView.reloadData()
        }
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
        
}


//MARK: - Menu CV Data Source Extension

extension MenuController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.menuCardItems?.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell        = collectionView.dequeueReusableCell(withReuseIdentifier: Resources.Identifiers.menuCardCell.rawValue,
                                                             for: indexPath) as! MenuCardCell
        guard let menuCardItems = presenter.menuCardItems else { return MenuCardCell() }
        guard let image = menuCardItems[indexPath.item].image?.image else { return MenuCardCell() }
        let nameLabel   = menuCardItems[indexPath.item].label
        let weightLabel = menuCardItems[indexPath.item].weight
        let priceLabel  = menuCardItems[indexPath.item].price
        cell.configureCell(with: image, nameLabel: nameLabel, weightLabel: weightLabel, priceLabel: priceLabel)
        return cell
    }
    
}

//MARK: - Menu CV Delegate Extension

extension MenuController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter.cardDidTapped()
    }
}


//MARK: - FlowLayout Delegate Exetnsion

extension MenuController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.bounds.width / 2) - 20, height: 275)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
