//
//  ProfileViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import UIKit


//MARK: - ProfileController

final class ProfileController: MainController {
    
    var presenter: ProfilePresenterProtocol!
    
    //MARK: - UI ELements
    
    let personalDetailsTextLabel = UILabel(.quickBold20, .black, .left, "Personal details")
    let changeButton             = UIButton().buildChangeButton()
    let profileView              = DeliveryAddressView()
    var profileCollectionView    : UICollectionView!
    let logoutButton             = UIButton("Log out")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
//MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {

    }
}


//MARK: - MainController Extension

extension ProfileController {
    
    override func setupView() {
        super.setupView()
        
        view.addSubview(personalDetailsTextLabel)
        view.addSubview(changeButton)
        view.addSubview(profileView)
        view.addSubview(logoutButton)
        
        setupCollectionView()
    }
    
    override func setupNavBar() {
        super.setupNavBar()
        
        guard let nc = self.navigationController else { return }
        nc.navigationBar.setupNavigationBar(with: "My Profile", on: self)
        nc.navigationBar.addNavBarButton(with: .navBarBackImage!,
                                         target: self,
                                         action: #selector(leftBarButtonDidTapped),
                                         where: .leftSide,
                                         on: self)
    }
    
    override func setupCollectionView() {
        super.setupCollectionView()
        
        let layout = UICollectionViewFlowLayout().buildFlowLayout(.vertical)
        
        profileCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        profileCollectionView.backgroundColor = .none
        profileCollectionView.dataSource      = self
        profileCollectionView.delegate        = self
        profileCollectionView.register(ProfileMenuCell.self, forCellWithReuseIdentifier: Resources.Identifiers.profileMenuCell.rawValue)
        
        view.addSubview(profileCollectionView)
    }
}


//MARK: MainView Extension

extension ProfileController: MainViewProtocol {
    
    func success() {
        //
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
    
}

//MARK: - ProfileCollectionView DS Extension

extension ProfileController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.menuItems.count ?? 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell            = collectionView.dequeueReusableCell(withReuseIdentifier: Resources.Identifiers.profileMenuCell.rawValue,
                                                                 for: indexPath) as! ProfileMenuCell
        let sectionLabel    = presenter?.menuItems[indexPath.item] ?? "No data"
        cell.configureCell(sectionLabel: sectionLabel)
        return cell
    }
    
    
    
}


//MARK: - ProfileCollectionViewFlowLayoutDelegte Extension

extension ProfileController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: collectionView.frame.height / 4 - 25)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 10, bottom: 10, right: 10)
    }
    
}

