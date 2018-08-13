//
//  AppCell.swift
//  AppStore
//
//  Created by Nathaniel SISON on 13/8/2018.
//  Copyright © 2018 Nathaniel Brion Sison. All rights reserved.
//

import UIKit


class AppCell: UICollectionViewCell {
    
    
    
    // MARK: OVERRIDES
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



// MARK: EXTENSION - SETUPVIEWS
extension AppCell {
    func setupViews() {
        self.backgroundColor = UIColor.black
    }
}
