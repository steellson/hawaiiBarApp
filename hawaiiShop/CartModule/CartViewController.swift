//
//  CartViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

class CartViewController: UIViewController {
    
    //MARK: - UI Elements
    
    var cartCollectionView: UICollectionView!
    let totalPriceTextLabel   = HWLabel().buildCartTotalPriceTextLabel()
    let priceMoneyLabel       = HWLabel().buildCartPriceMoneyLabel()
    let commentTextView       = HWTextView().buildHWCartCommentTextView()
    let completeOrderButton   = HWButton().buildHWCompleteOrderButton()
    var items: [CartItem]     = CartData.items
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(totalPriceTextLabel)
        view.addSubview(priceMoneyLabel)
        view.addSubview(commentTextView)
        view.addSubview(completeOrderButton)

        setupNavigationBar()
        setupCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        let rightBarItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.rightBarButtonItem = rightBarItem
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Basket"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    private func setupCollectionView() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        
        cartCollectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        cartCollectionView.backgroundColor = .none
        cartCollectionView.register(HWCartCell.self, forCellWithReuseIdentifier: "cartCell")
        cartCollectionView.dataSource = self
        cartCollectionView.delegate = self
        
        view.addSubview(cartCollectionView)
    }
    
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension



//MARK: - Data Source Extension

extension CartViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cartCell", for: indexPath) as! HWCartCell
        guard let image = items[indexPath.item].imageView?.image else { return UICollectionViewCell() }
        let nameLabel = items[indexPath.item].nameLabel
        let priceLabel = items[indexPath.item].priceLabel
        cell.configureCell(image, nameLabel, priceLabel: priceLabel)
        return cell
    }
    
    
}


//MARK: - FlowLayout Delegate Extension

extension CartViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: 85)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
}
