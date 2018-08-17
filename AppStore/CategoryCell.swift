//
//  CategoryCell.swift
//  AppStore
//
//  Created by Nathaniel SISON on 13/8/2018.
//  Copyright © 2018 Nathaniel Brion Sison. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    
    
    // MARK: PROPERTIES
    static let identifier = "categoryCellIdentifier"
    
    var appCategory: AppCategory? {
        didSet {
            if let name = appCategory?.name {
                categoryNameLabel.text = name
            }
        }
    }
    
    let categoryNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Best New Apps"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let appCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.horizontal
        
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: layout
        )
        
        collectionView.backgroundColor = UIColor.white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    let divider: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.4, alpha: 0.4)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    // MARK: OVERRIDES
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: SETUP VIEWS
    func setupViews() {
        self.backgroundColor = UIColor.white
        self.addSubview(categoryNameLabel)
        self.addSubview(appCollectionView)
        self.addSubview(divider)
        
        appCollectionView.dataSource = self
        appCollectionView.delegate = self
        appCollectionView.register(AppCell.self, forCellWithReuseIdentifier: AppCell.identifier)
        
        self.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-14-[v0]|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["v0": categoryNameLabel]
        ))
        
        self.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|[v0]|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["v0": appCollectionView]
        ))
        
        self.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|[v0(30)][v1][v2(1)]|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["v0": categoryNameLabel, "v1": appCollectionView, "v2": divider]
        ))
        
        self.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-14-[v0]|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["v0": divider]
        ))
    }
}



// MARK: EXTENSION - UICOLLECTIONVIEW
extension CategoryCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appCategory?.apps?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppCell.identifier, for: indexPath) as! AppCell
        
        cell.app = appCategory?.apps?[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: self.frame.height - 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 14, 0, 14)
    }
    
}



