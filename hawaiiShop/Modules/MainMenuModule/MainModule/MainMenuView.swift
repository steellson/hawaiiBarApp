//
//  MainMenuView.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.12.2022.
//

import UIKit


//MARK: - MainMenuViewImpl

final class MainMenuView: MainView {
    
    var presenter: MainPresenterProtocol!
    
    //MARK: - UI Elements
    
    let searchField         = UITextField().buildSearchField()
    let menuLabel           = UILabel(.quickBold20, .black, .left, "Menu")
    var cardsCollectionView : UICollectionView!
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
//MARK: - Setup Controller
    
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
    
    
    //MARK: - NavBarButtons Actions
    
    @objc private func leftBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
    
    @objc private func rightBarButtonDidTapped() {
        presenter.cartDidTapped()
    }
}

//MARK: - MainMenuView Extension

extension MainMenuView {
    
    override func setupView() {
        super.setupView()
        
        view.addSubview(searchField)
        view.addSubview(menuLabel)
        
        setupCollectionView()
    }
    
    override func setupNavBar() {
        super.setupNavBar()
       
        guard let nc = self.navigationController else { return }
        nc.navigationBar.setupNavigationBar(with: "Hawaii Bar", on: self)
        nc.navigationBar.addNavBarButton(with: .profileNavBarImage!,
                                             target: self,
                                             action: #selector(leftBarButtonDidTapped),
                                             where: .leftSide,
                                             on: self)
        nc.navigationBar.addNavBarButton(with: .cartNavBarImage!,
                                         target: self,
                                         action: #selector(rightBarButtonDidTapped),
                                         where: .rightSide,
                                         on: self)
    }
}


//MARK: - MainMenuViewProtocol Extension

extension MainMenuView: MainViewProtocol {
    
    func success() {
        cardsCollectionView.reloadData()
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
}


//MARK: - Main Menu CV Data Source Extension

extension MainMenuView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.mainMenuCards?.count ?? 1
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

extension MainMenuView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter.cardDidTapped()
    }
}


//MARK: - FlowLayout Delegate Extension

extension MainMenuView: UICollectionViewDelegateFlowLayout {
    
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
