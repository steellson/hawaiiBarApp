//
//  AuthorizationViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.11.2022.
//

import UIKit

class AuthorizationViewController: UIViewController {
    
    var presenter: AuthorizationPresenterProtocol!
    
    //MARK: - UI Elements
    
    let authorizationLabel = UILabel(UIFont(name: "Quicksand-Bold", size: 24)!, .black, .center, "Authorization")
    let authView           = UIView(.white)
    
    lazy var authorizationModeSegment: UISegmentedControl = {
        let items = ["Sign Up", "Login"]
        let segment = UISegmentedControl(items: items)
        segment.backgroundColor = .white
        segment.isMomentary = false
        segment.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Quicksand-SemiBold", size: 18)!, NSAttributedString.Key.foregroundColor: UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)], for: .normal)
        return segment
    }()
    
    let loginField       = UITextField().buildLoginField()
    let passwordField    = UITextField().buildPasswordSMSField()
    let enterButton      = UIButton("Log in")
    let helpButton       = UIButton().buildHelpButton()
    let bottomOrangeView = UIView(UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1))
    
    
//MARK: - Life cycle
    
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

extension AuthorizationViewController: AuthorizationViewProtocol {
    func showCurrent() {
        //
    }
}
