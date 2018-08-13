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
    let appCellIdentifier = "appCellIdentifier"
    
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
    
    
    
    // MARK: OVERRIDES
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



// MARK: EXTENSION - UICOLLECTIONVIEW
extension CategoryCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: appCellIdentifier, for: indexPath) as! AppCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: self.frame.height)
    }
    
}



// MARK: EXTENSION - SETUPVIEWS
extension CategoryCell {
    func setupViews() {
        self.backgroundColor = UIColor.white
        self.addSubview(appCollectionView)
        
        appCollectionView.dataSource = self
        appCollectionView.delegate = self
        
        appCollectionView.register(AppCell.self, forCellWithReuseIdentifier: appCellIdentifier)
        
        self.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-0-[v0]-0-|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["v0": appCollectionView]
        ))
        
        self.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|[v0]|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: ["v0": appCollectionView]
        ))
    }
}
