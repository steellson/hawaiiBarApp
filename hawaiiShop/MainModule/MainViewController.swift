//
//  MainViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    
    let authorizationLabel = HWLabel().buildHWAuthorizationLabel()
    let authView = HWView().buildHWAuthView()
    
    lazy var authorizationModeSegment: UISegmentedControl = {
        let items = ["Sign Up", "Login"]
        let segment = UISegmentedControl(items: items)
        segment.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Arial", size: 18)!], for: .normal)
        segment.backgroundColor = .white
        segment.isMomentary = false
        return segment
    }()
    
    let loginField = HWTextField().buildHWLoginField()
    let passwordField = HWTextField().buildHWPasswordSMSField()
    let enterButton = HWButton().buildHWEnterButton()
    let helpButton = HWButton().buildHWHelpButton()
    let bottomOrangeView = HWView().buildHWOrangeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    //MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(authorizationLabel)
        view.addSubview(authView)
        view.addSubview(authorizationModeSegment)
        view.addSubview(loginField)
        view.addSubview(passwordField)
        view.addSubview(enterButton)
        view.addSubview(helpButton)
        view.addSubview(bottomOrangeView)
        
        setupLayout()
    }
    
}

//MARK: Protocol Extension

extension MainViewController: MainViewProtocol {
    func showCurrent() {
        //
    }
}
