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
    var appCategories: [AppCategory]?
    
    
    
    // MARK: OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "Featured"

        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: CategoryCell.identifier)
        collectionView?.register(LargeCategoryCell.self, forCellWithReuseIdentifier: LargeCategoryCell.largeIdentifier)
    
        AppCategory.fetchFeaturedApps { (appCategories) in
            self.appCategories = appCategories
            self.collectionView?.reloadData()
        }
    }

 
    
    // MARK: UICOLLECTIONVIEWCONTROLLER
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appCategories?.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LargeCategoryCell.largeIdentifier, for: indexPath) as! LargeCategoryCell
            cell.appCategory = appCategories?[indexPath.item]

            return cell
        }
        
            
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.identifier, for: indexPath) as! CategoryCell
        cell.appCategory = appCategories?[indexPath.item]
        
        return cell
    }
    
    

    // MARK: UICOLLECTIONVIEWDELEGATEFLOWLAYOUT
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 2 {
            return CGSize(width: view.frame.width, height: 160)
        }
        
        return CGSize(width: view.frame.width, height: 240)
    }
}
