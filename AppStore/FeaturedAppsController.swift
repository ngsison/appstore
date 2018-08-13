//
//  ViewController.swift
//  AppStore
//
//  Created by Nathaniel SISON on 13/8/2018.
//  Copyright © 2018 Nathaniel Brion Sison. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    
    
    // MARK: PROPERTIES
    private let categoryCellIdentifier = "categoryCell"
    
    
    
    // MARK: OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "Featured"
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: categoryCellIdentifier)
    }

 
    
    // MARK: UICOLLECTIONVIEWCONTROLLER
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: categoryCellIdentifier, for: indexPath) as! CategoryCell
        
        return cell
    }
    
    

    // MARK: UICOLLECTIONVIEWDELEGATEFLOWLAYOUT
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 240)
    }
}
