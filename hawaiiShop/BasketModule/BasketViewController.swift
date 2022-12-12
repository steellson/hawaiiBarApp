//
//  BasketViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 09.12.2022.
//

import Foundation
import UIKit

class BasketViewController: UIViewController {
    
    
    //MARK: - UI Elements
    
    var basketCollectionView: UICollectionView!
    var basketItems: [BasketItem]?
    
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    //MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        setupNavigationBar()
        setupCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Basket"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    private func setupCollectionView() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        
        basketCollectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        basketCollectionView.backgroundColor = .none
        basketCollectionView.register(HWBasketCell.self, forCellWithReuseIdentifier: "HWBasketCell")
        basketCollectionView.delegate = self
        basketCollectionView.dataSource = self
        
        view.addSubview(basketCollectionView)
        
    }
    
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension




//MARK: - Basket CV Data Source Extension

extension BasketViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let basketCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HWBasketCell", for: indexPath) as! HWBasketCell
        guard let itemImage = BasketData.basketItems[indexPath.item].imageView.image else { return HWBasketCell() }
        let nameLabel = BasketData.basketItems[indexPath.item].nameLabel
        let priceLabel = BasketData.basketItems[indexPath.item].priceLabel
        basketCell.configureCell(itemImage, nameLabel: nameLabel, priceLabel: priceLabel)
        return basketCell
    }
    
    
}


//MARK: - FlowLayout Delegate Exetnsion

extension BasketViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20.0
    }
}




//MARK: - Protocol Extension








