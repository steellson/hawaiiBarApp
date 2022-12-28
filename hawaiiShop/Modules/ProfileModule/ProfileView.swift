//
//  ProfileViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import UIKit


//MARK: - ProfileViewImpl

final class ProfileView: MainView {
    
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
    
    
//MARK: - Setup Controller

    private func setupCollectionView() {
        let flowLayout              = UICollectionViewFlowLayout()
        flowLayout.scrollDirection  = .vertical
        
        profileCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        profileCollectionView.backgroundColor = .none
        profileCollectionView.dataSource      = self
        profileCollectionView.delegate        = self
        profileCollectionView.register(ProfileMenuCell.self, forCellWithReuseIdentifier: "profileMenuCell")
        
        view.addSubview(profileCollectionView)
    }
    
    //MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {

    }
}


//MARK: - MainView Extension

extension ProfileView {
    
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
}


//MARK: MainView Extension

extension ProfileView: MainViewProtocol {
    
    func success() {
        //
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
    
}

//MARK: - ProfileCollectionView DS Extension

extension ProfileView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.menuItems.count ?? 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell            = collectionView.dequeueReusableCell(withReuseIdentifier: "profileMenuCell", for: indexPath) as! ProfileMenuCell
        let sectionLabel    = presenter?.menuItems[indexPath.item] ?? "No data"
        cell.configureCell(sectionLabel: sectionLabel)
        return cell
    }
    
    
    
}


//MARK: - ProfileCollectionViewFlowLayoutDelegte Extension

extension ProfileView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: collectionView.frame.height / 4 - 25)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 10, bottom: 10, right: 10)
    }
    
}

