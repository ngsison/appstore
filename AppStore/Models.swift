//
//  Models.swift
//  AppStore
//
//  Created by Nathaniel SISON on 15/8/2018.
//  Copyright © 2018 Nathaniel Brion Sison. All rights reserved.
//

import Foundation



class AppCategory: NSObject {
    var name: String?
    var apps: [App]?
    
    static func sampleAppCategories() -> [AppCategory] {
        
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        var bestNewAppsApps = [App]()
        
        let frozen = App()
        frozen.name = "Disney Build It: Frozen"
        frozen.imageName = "frozen"
        frozen.category = "Entertainment"
        frozen.price = 3.99
        
        bestNewAppsApps.append(frozen)
        bestNewAppsCategory.apps = bestNewAppsApps
        
        
        let bestNewGamesCategory = AppCategory()
        bestNewGamesCategory.name = "Best New Games"
        
        var bestNewGamesApps = [App]()
        
        let telepaint = App()
        telepaint.name = "telepaint"
        telepaint.imageName = "telepaint"
        telepaint.category = "Games"
        telepaint.price = 2.99
        
        bestNewGamesApps.append(telepaint)
        bestNewGamesCategory.apps = bestNewGamesApps
        
        return [bestNewAppsCategory, bestNewGamesCategory]
    }
}



class App: NSObject {
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
}
