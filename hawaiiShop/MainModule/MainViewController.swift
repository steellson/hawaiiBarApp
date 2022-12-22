//
//  MainViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    //MARK: - UI Elements
    
    let searchField                       = UITextField().buildSearchField()
    let menuLabel                         = UILabel(UIFont(name: "Quicksand-Bold", size: 20)!, .black, .left, "Menu")
    var mainMenuCards: [MainMenuCard]     = MainMenuCardData.cards
    var cardsCollectionView               : UICollectionView!
    
    
//MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(searchField)
        view.addSubview(menuLabel)

        setupNavigationBar()
        setupCollectionView()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "person"), style: .plain, target: self, action: #selector(mainMenuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        let rightBarItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(mainMenuBarButtonDidTapped))
        navigationItem.rightBarButtonItem = rightBarItem
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)

        navigationItem.title = "Hawaii Bar"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    private func setupCollectionView() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 3
        
        cardsCollectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        cardsCollectionView.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        cardsCollectionView.register(MainMenuCardCell.self, forCellWithReuseIdentifier: "cardCell")
        cardsCollectionView.dataSource = self
        cardsCollectionView.delegate = self
        
        view.addSubview(cardsCollectionView)
    }
    
    
//MARK: - Buttons Action
    
    @objc private func mainMenuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension


//MARK: - Main Menu CV Data Source Extension

extension MainViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainMenuCards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! MainMenuCardCell
        guard let image = mainMenuCards[indexPath.item].image?.image else { return MainMenuCardCell() }
        let label = mainMenuCards[indexPath.item].label
        cell.configureCell(with: image, and: label)
        return cell
    }
}


//MARK: - FlowLayout Delegate Extension

extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.bounds.width / 2) - 20, height: 210)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
