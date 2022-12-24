//
//  MainViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit


//MARK: - MainViewProtocol

protocol MainViewProtocol: AnyObject {
    func success()
    func failure(error: Error)
}


//MARK: - MainViewImpl

final class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    
    //MARK: - UI Elements
    
    let searchField                       = UITextField().buildSearchField()
    let menuLabel                         = UILabel(.quickBold20, .black, .left, "Menu")
    var cardsCollectionView               : UICollectionView!
    
    
//MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite
        
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
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.quickBold20]
    }
    
    private func setupCollectionView() {
        let flowLayout                = UICollectionViewFlowLayout()
        flowLayout.scrollDirection    = .vertical
        flowLayout.minimumLineSpacing = 3
        
        cardsCollectionView                 = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        cardsCollectionView.backgroundColor = UIColor.specialWhite
        cardsCollectionView.dataSource      = self
        cardsCollectionView.delegate        = self
        cardsCollectionView.showsVerticalScrollIndicator = false
        cardsCollectionView.register(MainMenuCardCell.self, forCellWithReuseIdentifier: "cardCell")
        
        view.addSubview(cardsCollectionView)
    }
    
    
//MARK: - Buttons Action
    
    @objc private func mainMenuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension

extension MainViewController: MainViewProtocol {
    
    func success() {
        cardsCollectionView.reloadData()
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
}


//MARK: - Main Menu CV Data Source Extension

extension MainViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.mainMenuCards?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell        = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! MainMenuCardCell
        guard let image = presenter.mainMenuCards?[indexPath.item].image?.image else { return MainMenuCardCell() }
        guard let label = presenter.mainMenuCards?[indexPath.item].label else { return  MainMenuCardCell() }
        cell.configureCell(with: image, and: label)
        return cell
    }
}

//MARK: Main Menu CV Delegate Extension

extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter.cardDidTapped()
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
