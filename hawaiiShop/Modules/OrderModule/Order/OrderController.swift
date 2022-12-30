//
//  OrderViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import UIKit


//MARK: - OrderController

final class OrderController: MainController {
    
    var presenter: OrderPresenter!
    
    //MARK: - UI Elements
    
    var infoStack             : UIStackView!
    var orderCollectionView   : UICollectionView!
    let totalPriceTextLabel   = UILabel(.quickBold24, .black, .left, "Total price")
    let moneyPriceleLabel     = UILabel(.quickBold28, .specialOrange, .right, "52 $")
    let repeatOrderButton     = UIButton("Repeat order")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
//MARK: - Setup Controller
    
    private func setupInfoStack() {
        infoStack              = UIStackView()
        infoStack.axis         = .vertical
        infoStack.spacing      = 10
        infoStack.distribution = .fillEqually
        
        let timeLabel     = UILabel(.quickReg16, .black, .left, "Order time: 2022.03.16 12:00")
        let addressLabel  = UILabel(.quickReg16, .black, .left, "Address: Berlin, Hauptbahnhof, Europaplatz 1.")
        let paymentLabel  = UILabel(.quickReg16, .black, .left, "Payment:" + " " + PaymentMethods.Card.rawValue)
        let statusLabel   = UILabel(.quickReg16, .black, .left, "Status:" + " " + Order.OrderStatus.Completed.rawValue)
        
        infoStack.addArrangedSubview(timeLabel)
        infoStack.addArrangedSubview(addressLabel)
        infoStack.addArrangedSubview(paymentLabel)
        infoStack.addArrangedSubview(statusLabel)

        view.addSubview(infoStack)
    }

    
    //MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {

    }
    
}


//MARK: MainController Extension

extension OrderController {
    
    override func setupView() {
        super.setupView()
        
        view.addSubview(totalPriceTextLabel)
        view.addSubview(moneyPriceleLabel)
        view.addSubview(repeatOrderButton)
        
        setupInfoStack()
        setupCollectionView()
    }
    
    override func setupNavBar() {
        super.setupNavBar()
       
        guard let nc = self.navigationController else { return }
        nc.navigationBar.setupNavigationBar(with: "Order #274594", on: self)
        nc.navigationBar.addNavBarButton(with: .navBarBackImage!,
                                             target: self,
                                             action: #selector(leftBarButtonDidTapped),
                                             where: .leftSide,
                                             on: self)
    }
    
    override func setupCollectionView() {
        super.setupCollectionView()
        
        let layout = UICollectionViewFlowLayout().buildFlowLayout(.vertical)
        
        orderCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        orderCollectionView.backgroundColor = .none
        orderCollectionView.delegate        = self
        orderCollectionView.dataSource      = self
        orderCollectionView.register(OrderCell.self, forCellWithReuseIdentifier: Resources.Identifiers.orderCell.rawValue)
        
        
        view.addSubview(orderCollectionView)
    }
}


//MARK: - MainViewProtocol Extension

extension OrderController: MainViewProtocol {
    func success() {
        //
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
    
}



//MARK: - OrdersCollectionView DS Extension

extension OrderController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.items?.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell        = collectionView.dequeueReusableCell(withReuseIdentifier: Resources.Identifiers.orderCell.rawValue,
                                                             for: indexPath) as! OrderCell
        guard let image = presenter.items?[indexPath.item].image else { return cell }
        guard let title = presenter.items?[indexPath.item].title else { return cell }
        guard let counter  = presenter.items?[indexPath.item].count else { return cell }
        guard let price = presenter.items?[indexPath.item].price else { return cell }
        cell.configureCell(image: image, nameLabel: title, counter: counter, priceLabel: price)
        return cell
    }
    
    
}


//MARK: - UICollectionViewFlowLayout Delegate Extension

extension OrderController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
}

