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
    
    let personalDetailsTextLabel = HWLabel().buildHWPersonalDetailsTextLabel()
    let changeButton             = HWButton().buildHWDeliveryChangeButton()
    let profileView              = HWDeliveryAddressView()
    var profileCollectionView    : UICollectionView!
    let logoutButton             = HWButton().buildHWProfileLogoutButton()
    var menuItems                = ProfileMenu.profileMenuItems
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(personalDetailsTextLabel)
        view.addSubview(changeButton)
        view.addSubview(profileView)
        view.addSubview(logoutButton)
        
        setupNavigationBar()
        setupCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "My profile"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    private func setupCollectionView() {
        let flowLayout              = UICollectionViewFlowLayout()
        flowLayout.scrollDirection  = .vertical
        
        profileCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        profileCollectionView.backgroundColor = .none
        profileCollectionView.dataSource      = self
        profileCollectionView.delegate        = self
        profileCollectionView.register(HWProfileMenuCell.self, forCellWithReuseIdentifier: "profileMenuCell")
        
        view.addSubview(profileCollectionView)
    }
    
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
    
}


//MARK: - Protocol Extension



//MARK: - ProfileCollectionView DS Extension

extension ProfileViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell         = collectionView.dequeueReusableCell(withReuseIdentifier: "profileMenuCell", for: indexPath) as! HWProfileMenuCell
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

