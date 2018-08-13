//
//  AppCell.swift
//  AppStore
//
//  Created by Nathaniel SISON on 13/8/2018.
//  Copyright © 2018 Nathaniel Brion Sison. All rights reserved.
//

import UIKit


class AppCell: UICollectionViewCell {
    
    
    
    // MARK: PROPERTIES
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "frozen")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 16
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Disney Build It: Frozen"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Entertainment"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.darkGray
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$3.99"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.darkGray
        return label
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



// MARK: EXTENSION - SETUPVIEWS
extension AppCell {
    func setupViews() {
        self.addSubview(imageView)
        self.addSubview(nameLabel)
        self.addSubview(categoryLabel)
        self.addSubview(priceLabel)
        
        imageView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.width)
        nameLabel.frame = CGRect(x: 0, y: self.frame.width + 2, width: self.frame.width, height: 36)
        categoryLabel.frame = CGRect(x: 0, y: self.frame.width + 38, width: self.frame.width, height: 20)
        priceLabel.frame = CGRect(x: 0, y: self.frame.width + 58, width: self.frame.width, height: 20)
    }
}




