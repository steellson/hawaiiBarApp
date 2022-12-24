//
//  MenuViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 06.12.2022.
//

import Foundation
import UIKit

//MARK: - MenuViewProtocol

protocol MenuViewProtocol: AnyObject {
    func success()
    func failure(error: Error)
}


//MARK: - MenuViewImpl

class MenuViewController: UIViewController {
    
    var presenter: MenuPresenterProtocol!
    
    //MARK: - UI Elements
    
    var menuCollectionView    : UICollectionView!
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite

        setupNavigationBar()
        setupCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBackBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        let rightBarItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(menuBackBarButtonDidTapped))
        navigationItem.rightBarButtonItem = rightBarItem
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Salads"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.quickBold20]
    }
    
    private func setupCollectionView() {
        let flowLayout                = UICollectionViewFlowLayout()
        flowLayout.scrollDirection    = .vertical
        flowLayout.minimumLineSpacing = 3
        
        menuCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        menuCollectionView.backgroundColor = .specialWhite
        menuCollectionView.dataSource      = self
        menuCollectionView.delegate        = self
        menuCollectionView.register(MenuCardCell.self, forCellWithReuseIdentifier: "menuCell")

        view.addSubview(menuCollectionView)
    }
    
    
//MARK: - Buttons Action
    
    @objc private func menuBackBarButtonDidTapped() {
        presenter.backButtonDidTapped()
    }
}


//MARK: - Protocol Extension

extension MenuViewController: MenuViewProtocol {
    
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

extension MenuViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.menuCardItems?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell        = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCardCell
        guard let menuCardItems = presenter.menuCardItems else { return MenuCardCell() }
        guard let image = menuCardItems[indexPath.item].image?.image else { return MenuCardCell() }
        let nameLabel   = menuCardItems[indexPath.item].label
        let weightLabel = menuCardItems[indexPath.item].weight
        let priceLabel  = menuCardItems[indexPath.item].price
        cell.configureCell(with: image, nameLabel: nameLabel, weightLabel: weightLabel, priceLabel: priceLabel)
        return cell
    }
    
}


//MARK: - FlowLayout Delegate Exetnsion

extension MenuViewController: UICollectionViewDelegateFlowLayout {
    
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
