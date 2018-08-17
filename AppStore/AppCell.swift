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
    static let identifier = "appCellIdentifier"
    
    var app: App? {
        didSet {
            nameLabel.text = app?.name
            categoryLabel.text = app?.category
            if let price = app?.price {
                priceLabel.text = "$\(price.stringValue)"
            } else {
                priceLabel.text = ""
            }
            imageView.image = UIImage(named: app?.imageName ?? "")
        }
    }
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 16
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.darkGray
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
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
    
    
    
    // MARK: SETUP VIEWS
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





