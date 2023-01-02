//
//  PaymentViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import UIKit


//MARK: - PaymentController

final class PaymentController: MainController {
    
    var presenter: PaymentPresenterProtocol!
    
    //MARK: - UI Elements
    
    let paymentMethodTextLabel    = UILabel(.quickBold20, .black, .left, "Payment method")
    var paymentMethodPickerTable  : UITableView!
    let totalPriceTextLabel       = UILabel(.quickBold24, .black, .left, "Total price")
    let moneyPriceLabel           = UILabel(.quickBold24, .specialOrange, .right, "52 $")
    let completeButton            = UIButton("Complete payment")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
//MARK: - Setup Controller
    
    private func setupPaymentMethodPickerTable() {
        paymentMethodPickerTable                      = UITableView(frame: .zero, style: .plain)
        
        guard let paymentMethodPickerTable            = paymentMethodPickerTable else { return }
        paymentMethodPickerTable.backgroundColor      = .white
        paymentMethodPickerTable.isScrollEnabled      = false
        paymentMethodPickerTable.separatorInset.right = paymentMethodPickerTable.separatorInset.left
        paymentMethodPickerTable.layer.cornerRadius   = 18
        paymentMethodPickerTable.delegate             = self
        paymentMethodPickerTable.dataSource           = self
        paymentMethodPickerTable.register(ChooseMethodCell.self, forCellReuseIdentifier: Resources.Identifiers.paymentMethodCell.rawValue)

        view.addSubview(paymentMethodPickerTable)
    }
    
   
    
    //MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {

    }
}

//MARK: - MainController Extension

extension PaymentController {
    
    override func setupView() {
        super.setupView()
        
        view.addSubview(paymentMethodTextLabel)
        view.addSubview(totalPriceTextLabel)
        view.addSubview(moneyPriceLabel)
        view.addSubview(completeButton)
        
        setupPaymentMethodPickerTable()
    }
    
    override func setupNavBar() {
        super.setupNavBar()
        
        guard let nc = self.navigationController else { return }
        nc.navigationBar.setupNavigationBar(with: "Payment", on: self)
        nc.navigationBar.addNavBarButton(with: .navBarBackImage!,
                                         target: self,
                                         action: #selector(leftBarButtonDidTapped),
                                         side: .leftSide,
                                         on: self)
    }
}


//MARK: - MainViewProtocol Extension

extension PaymentController: MainViewProtocol {
    
    func success() {
        //
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
}


//MARK: - PaymentMethodPickerTable DS Extension

extension PaymentController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PaymentMethods.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let methodCell        = tableView.dequeueReusableCell(withIdentifier: Resources.Identifiers.paymentMethodCell.rawValue,
                                                              for: indexPath) as! ChooseMethodCell
        guard let pickerImage = UIImage(systemName: "circle") else { return methodCell }
        let text              = PaymentMethods.allCases[indexPath.row].rawValue
        methodCell.configureCell(image: pickerImage, text: text)
        return methodCell
    }
    
    
}


//MARK: - PaymentMethodPickerTable Delegate Extension

extension PaymentController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let methodCell = tableView.cellForRow(at: indexPath) as? ChooseMethodCell else { return }
        methodCell.pickerView.image = UIImage(systemName: "record.circle")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 2
    }
    
}
