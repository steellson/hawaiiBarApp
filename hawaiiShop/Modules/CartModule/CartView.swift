//
//  CartViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import UIKit


//MARK: CartViewImpl

final class CartView: MainView {
    
    var presenter: CartPresenterProtocol!
    
    //MARK: - UI Elements
    
    var cartCollectionView    : UICollectionView!
    let totalPriceTextLabel   = UILabel(.quickBold24, .black, .left, "Total price")
    let priceMoneyLabel       = UILabel(.quickBold24, UIColor.specialOrange, .right, "52 $")
    let commentTextView       = UITextView().buildCartCommentTextView()
    let completeOrderButton   = UIButton("Complete order")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
//MARK: - Setup Controller
    
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
    
    
    //MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }

}


//MARK: - MainView Extension

extension CartView {
    
    override func setupView() {
        super.setupView()
       
        view.addSubview(totalPriceTextLabel)
        view.addSubview(priceMoneyLabel)
        view.addSubview(commentTextView)
        view.addSubview(completeOrderButton)
        
        setupCollectionView()
    }
    
    override func setupNavBar() {
        super.setupNavBar()
       
        guard let nc = self.navigationController else { return }
        nc.navigationBar.setupNavigationBar(with: "Basket", on: self)
        nc.navigationBar.addNavBarButton(with: .navBarBackImage!,
                                             target: self,
                                             action: #selector(leftBarButtonDidTapped),
                                             where: .leftSide,
                                             on: self)
    }
}


//MARK: - CartViewProtocol Extension

extension CartView: MainViewProtocol {
    
    func success() {

    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
}


//MARK: - Data Source Extension

extension CartView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.cartItems?.count ?? 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cartItems = presenter.cartItems else { return CartCell() }
        let cell            = collectionView.dequeueReusableCell(withReuseIdentifier: "cartCell", for: indexPath) as! CartCell
        guard let image     = cartItems[indexPath.item].imageView?.image else { return CartCell() }
        let nameLabel       = cartItems[indexPath.item].nameLabel
        let priceLabel      = cartItems[indexPath.item].priceLabel
        cell.configureCell(image, nameLabel, priceLabel: priceLabel)
        return cell
    }
    
    
}


//MARK: - FlowLayout Delegate Extension

extension CartView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: 85)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
}
