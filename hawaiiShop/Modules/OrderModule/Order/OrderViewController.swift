//
//  OrderViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import Foundation
import UIKit

class OrderViewController: UIViewController {
    
    //MARK: - UI Elements
    
    var infoStack             : UIStackView!
    var orderCollectionView   : UICollectionView!
    let totalPriceTextLabel   = UILabel(.quickBold24, .black, .left, "Total price")
    let moneyPriceleLabel     = UILabel(.quickBold28, UIColor.specialOrange, .right, "52 $")
    let repeatOrderButton     = UIButton("Repeat order")
    var items                 = OrderData.items
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite

        view.addSubview(totalPriceTextLabel)
        view.addSubview(moneyPriceleLabel)
        view.addSubview(repeatOrderButton)
        
        setupNavigationBar()
        setupInfoStack()
        setupCollectionView()
        setupLayout()
    }
    
    
    private func setupNavigationBar() {
       // navigationController?.navigationBar.setupNavigationBar(self, "Order #227165")
    }
    
    private func setupInfoStack() {
        infoStack              = UIStackView()
        infoStack.axis         = .vertical
        infoStack.spacing      = 10
        infoStack.distribution = .fillEqually
        
        let timeLabel     = UILabel(.quickReg16, .black, .left, "Order time: 2022.03.16 12:00")
        let addressLabel  = UILabel(.quickReg16, .black, .left, "Address: Berlin, Hauptbahnhof, Europaplatz 1.")
        let paymentLabel  = UILabel(.quickReg16, .black, .left, "Payment:" + " " + PaymentMethods.Card.rawValue)
        let statusLabel   = UILabel(.quickReg16, .black, .left, "Status:" + " " + OrderStatus.Completed.rawValue)
        
        infoStack.addArrangedSubview(timeLabel)
        infoStack.addArrangedSubview(addressLabel)
        infoStack.addArrangedSubview(paymentLabel)
        infoStack.addArrangedSubview(statusLabel)

        view.addSubview(infoStack)
    }
    
    private func setupCollectionView() {
        let flowLayout                      = UICollectionViewFlowLayout()
        flowLayout.scrollDirection          = .vertical
        
        orderCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        orderCollectionView.backgroundColor = .none
        orderCollectionView.delegate        = self
        orderCollectionView.dataSource      = self
        orderCollectionView.register(OrderCell.self, forCellWithReuseIdentifier: "cellOrder")
        
        
        view.addSubview(orderCollectionView)
    }
    
        
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
    
}


//MARK: - Protocol Extension




//MARK: - OrdersCollectionView DS Extension

extension OrderViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell        = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOrder", for: indexPath) as! OrderCell
        guard let image = items[indexPath.item].image else { return cell }
        let title       = items[indexPath.item].title
        let counter     = items[indexPath.item].count
        let price       = items[indexPath.item].price
        cell.configureCell(image: image, nameLabel: title, counter: counter, priceLabel: price)
        return cell
    }
    
    
}


//MARK: - UICollectionViewFlowLayout Delegate Extension

extension OrderViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
}

