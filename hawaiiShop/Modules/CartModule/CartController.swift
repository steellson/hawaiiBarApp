//
//  CartViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import UIKit


//MARK: CartController

final class CartController: MainController {
    
    var presenter: CartPresenterProtocol!
    
    //MARK: - UI Elements
    
    var cartCollectionView    : UICollectionView!
    let totalPriceTextLabel   = UILabel(.quickBold24, .black, .left, "Total price")
    let priceMoneyLabel       = UILabel(.quickBold24, .specialOrange, .right, "52 $")
    let commentTextView       = UITextView().buildCartCommentTextView()
    let completeOrderButton   = UIButton("Complete order")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

//MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {

    }
}


//MARK: - MainController Extension

extension CartController {
    
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
                                             side: .leftSide,
                                             on: self)
    }
    
    override func setupCollectionView() {
        super.setupCollectionView()
        
        let layout = UICollectionViewFlowLayout().buildFlowLayout(.vertical)
        
        cartCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cartCollectionView.backgroundColor = .none
        cartCollectionView.dataSource      = self
        cartCollectionView.delegate        = self
        cartCollectionView.register(CartCell.self, forCellWithReuseIdentifier: Resources.Identifiers.cartCell.rawValue)

        view.addSubview(cartCollectionView)
    }
}


//MARK: - CartViewProtocol Extension

extension CartController: MainViewProtocol {
    
    func success() {

    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
}


//MARK: - Data Source Extension

extension CartController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.cartItems?.count ?? 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cartItems = presenter.cartItems else { return CartCell() }
        let cell            = collectionView.dequeueReusableCell(withReuseIdentifier: Resources.Identifiers.cartCell.rawValue,
                                                                 for: indexPath) as! CartCell
        guard let image     = cartItems[indexPath.item].imageView?.image else { return CartCell() }
        let nameLabel       = cartItems[indexPath.item].nameLabel
        let priceLabel      = cartItems[indexPath.item].priceLabel
        cell.configureCell(image, nameLabel, priceLabel: priceLabel)
        return cell
    }
    
    
}


//MARK: - FlowLayout Delegate Extension

extension CartController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: 85)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
}
