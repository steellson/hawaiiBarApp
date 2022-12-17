//
//  PaymentViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit

class PaymentViewController: UIViewController {
    
    //MARK: - UI Elements
    
    var paymentMethodPickerTable: UITableView!
    
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        
        setupNavigationBar()
        setupPaymentMethodPickerTable()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Payment"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    private func setupPaymentMethodPickerTable() {
        paymentMethodPickerTable = UITableView(frame: .zero, style: .plain)
        
        guard let paymentMethodPickerTable = paymentMethodPickerTable else { return }
        paymentMethodPickerTable.backgroundColor = .white
        paymentMethodPickerTable.isScrollEnabled = false
        paymentMethodPickerTable.separatorInset.right = paymentMethodPickerTable.separatorInset.left
        paymentMethodPickerTable.layer.cornerRadius = 18
        paymentMethodPickerTable.register(HWChooseMethodCell.self, forCellReuseIdentifier: "paymentMethodCell")
        paymentMethodPickerTable.delegate = self
        paymentMethodPickerTable.dataSource = self
        
        view.addSubview(paymentMethodPickerTable)
    }
    
   
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension



//MARK: - PaymentMethodPickerTable DS Extension

extension PaymentViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let methodCell = tableView.dequeueReusableCell(withIdentifier: "paymentMethodCell", for: indexPath) as! HWChooseMethodCell
//        let nameOfMethod = paymentTypes[indexPath.row].rawValue
//        methodCell.configureCell(text: nameOfMethod)
        return methodCell
    }
    
    
}


//MARK: - PaymentMethodPickerTable Delegate Extension

extension PaymentViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let methodCell = tableView.cellForRow(at: indexPath) else { return }
        var config = methodCell.defaultContentConfiguration()
        config.image = UIImage(systemName: "record.circle")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 2
    }
    
}
