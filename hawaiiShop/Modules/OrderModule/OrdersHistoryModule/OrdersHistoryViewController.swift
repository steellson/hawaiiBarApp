//
//  OrdersHistoryViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import UIKit

//MARK: - OrdersHistoryController

final class OrdersHistoryController: MainController {
    
    var presenter: OrdersHistoryPresenterProtocol!
    
    //MARK: - UI Elements
    
    var ordersCollectionView: UICollectionView!
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
    }
    

//MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {

    }

}


//MARK: MainController Extension

extension OrdersHistoryController {
    
    override func setupNavBar() {
        super.setupNavBar()
       
        guard let nc = self.navigationController else { return }
        nc.navigationBar.setupNavigationBar(with: "Orders History", on: self)
        nc.navigationBar.addNavBarButton(with: .navBarBackImage!,
                                             target: self,
                                             action: #selector(leftBarButtonDidTapped),
                                             side: .leftSide,
                                             on: self)
    }
    
    override func setupCollectionView() {
        super.setupCollectionView()
        
        let layout = UICollectionViewFlowLayout().buildFlowLayout(.vertical)
        
        ordersCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        ordersCollectionView.backgroundColor = .none
        ordersCollectionView.dataSource      = self
        ordersCollectionView.delegate        = self
        ordersCollectionView.register(OrdersHistoryCell.self, forCellWithReuseIdentifier: Resources.Identifiers.ordersHistoryCell.rawValue)

        view.addSubview(ordersCollectionView)
    }
}


//MARK: - MainViewProtocol Extension

extension OrdersHistoryController: MainViewProtocol {
    
    func success() {
        //
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
    
}


//MARK: - OrdersCollectionView DataSource Extension

extension OrdersHistoryController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.ordersData?.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let orderCell             = collectionView.dequeueReusableCell(withReuseIdentifier: Resources.Identifiers.ordersHistoryCell.rawValue,
                                                                       for: indexPath) as! OrdersHistoryCell
        guard let ordersData      = presenter.ordersData, !ordersData.isEmpty else { return orderCell }
        guard let idLabelText     = presenter.ordersData?[indexPath.item].id else { return orderCell }
        guard let statusLabelText = presenter.ordersData?[indexPath.item].status else { return orderCell }
        guard let timeLabelText   = presenter.ordersData?[indexPath.item].time else { return orderCell }
        guard let image           = presenter.ordersData?[indexPath.item].image else { return orderCell }
        orderCell.configureCell(idLabel: idLabelText, statusLabel: statusLabelText.rawValue, timeLabel: timeLabelText)
        for _ in 0..<presenter.ordersData!.count {
            orderCell.configureCelImageStackView(image: image)
        }
        return orderCell
    }
    
}


//MARK: - OrdersCollectionView FlowLayoutDelegate Extension

extension OrdersHistoryController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: 125)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
    
}


