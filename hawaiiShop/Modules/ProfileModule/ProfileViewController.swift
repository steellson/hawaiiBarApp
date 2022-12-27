//
//  ProfileViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    //MARK: - UI ELements
    
    let personalDetailsTextLabel = UILabel(.quickBold20, .black, .left, "Personal details")
    let changeButton             = UIButton().buildChangeButton()
    let profileView              = DeliveryAddressView()
    var profileCollectionView    : UICollectionView!
    let logoutButton             = UIButton("Log out")
    var menuItems                = ProfileMenu.profileMenuItems
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite
        
        view.addSubview(personalDetailsTextLabel)
        view.addSubview(changeButton)
        view.addSubview(profileView)
        view.addSubview(logoutButton)
        
        setupNavigationBar()
        setupCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        //navigationController?.navigationBar.setupNavigationBar(self, "My profile")
    }
    
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
}


//MARK: - Protocol Extension



//MARK: - ProfileCollectionView DS Extension

extension ProfileViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell         = collectionView.dequeueReusableCell(withReuseIdentifier: "profileMenuCell", for: indexPath) as! ProfileMenuCell
        let sectionLabel = menuItems[indexPath.item]
        cell.configureCell(sectionLabel: sectionLabel)
        return cell
    }
    
    
    
}


//MARK: - ProfileCollectionViewFlowLayoutDelegte Extension

extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 30, height: collectionView.frame.height / 4 - 25)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 10, bottom: 10, right: 10)
    }
    
}

