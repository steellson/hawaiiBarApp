//
//  OrdersHistoryViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit

class OrdersHistoryViewController: UIViewController {
    
    //MARK: - UI Elements
    
    var ordersCollectionView: UICollectionView!
    
    var ordersData          = OrdersHistoryData.items
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        
        setupNavigationBar()
        setupOrdersCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Orders History"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    private func setupOrdersCollectionView() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        
        ordersCollectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        ordersCollectionView.backgroundColor = .none
        ordersCollectionView.register(HWOrdersHistoryCell.self, forCellWithReuseIdentifier: "historyCell")
        ordersCollectionView.dataSource = self
        ordersCollectionView.delegate = self
        
        view.addSubview(ordersCollectionView)
    }
    
   
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }

}


//MARK: - Protocol Extension





//MARK: - OrdersCollectionView DataSource Extension

extension OrdersHistoryViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ordersData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let orderCell       = collectionView.dequeueReusableCell(withReuseIdentifier: "historyCell", for: indexPath) as! HWOrdersHistoryCell
        let idLabelText     = ordersData[indexPath.item].id
        let statusLabelText = ordersData[indexPath.item].status
        let timeLabelText   = ordersData[indexPath.item].time
        let image           = ordersData[indexPath.item].image
        orderCell.configureCell(idLabel: idLabelText, statusLabel: statusLabelText.rawValue, timeLabel: timeLabelText)
        orderCell.configureCelImageStackView(image: image)
        return orderCell
    }
    
}



//MARK: - OrdersCollectionView FlowLayoutDelegate Extension

extension OrdersHistoryViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: 125)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
    
}


