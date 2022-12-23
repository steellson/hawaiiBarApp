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
    
    var cartCollectionView    : UICollectionView!
    let totalPriceTextLabel   = UILabel(.quickBold24, .black, .left, "Total price")
    let priceMoneyLabel       = UILabel(.quickBold24, UIColor.specialOrange, .right, "52 $")
    let commentTextView       = UITextView().buildCartCommentTextView()
    let completeOrderButton   = UIButton("Complete order")
    var items: [CartItem]     = CartData.items
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite
        
        view.addSubview(totalPriceTextLabel)
        view.addSubview(priceMoneyLabel)
        view.addSubview(commentTextView)
        view.addSubview(completeOrderButton)

        setupNavigationBar()
        setupCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.setupNavigationBar(self, "Basket")
    }
    
    private func setupCollectionView() {
        let flowLayout                    = UICollectionViewFlowLayout()
        flowLayout.scrollDirection        = .vertical
        
        cartCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        cartCollectionView.backgroundColor = .none
        cartCollectionView.dataSource      = self
        cartCollectionView.delegate        = self
        cartCollectionView.register(CartCell.self, forCellWithReuseIdentifier: "cartCell")

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
        let cell        = collectionView.dequeueReusableCell(withReuseIdentifier: "cartCell", for: indexPath) as! CartCell
        guard let image = items[indexPath.item].imageView?.image else { return UICollectionViewCell() }
        let nameLabel   = items[indexPath.item].nameLabel
        let priceLabel  = items[indexPath.item].priceLabel
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
