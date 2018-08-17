//
//  LargeAppCell.swift
//  AppStore
//
//  Created by Nathaniel SISON on 17/8/2018.
//  Copyright © 2018 Nathaniel Brion Sison. All rights reserved.
//

import UIKit


class LargeAppCell: AppCell {

    
    
    // MARK: - Properties
    static let largeIdentifier = "largeAppCellIdentifier"
    
    
    
    // MARK: - Overrides
    override func setupViews() {
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(imageView)
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": imageView]))
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[v0]-14-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": imageView]))
    }
}
