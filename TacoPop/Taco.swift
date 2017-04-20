//
//  Taco.swift
//  TacoPop
//
//  Created by Chase McElroy on 4/18/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    private var _id: Int!
    private var _productName: String!

    private var _shellID: TacoShell!
    private var _proteinId: TacoProtein!
    private var _condimentId: TacoCondiment
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellId: TacoShell {
        return _shellID
    }
    
    var proteinId: TacoProtein {
        return _proteinId
    }
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    init(id: Int, shellId: Int, proteinId: Int, condimentId: Int) {
        _id = id
        
        // Taco Shell
        switch shellId {
        case 2:
            self._shellID = TacoShell.Corn
        default:
            self._shellID = TacoShell.Flour
        }
        
        // Taco Protein
        switch proteinId {
        case 2:
            self._proteinId = TacoProtein.Chicken
        case 3:
            self._proteinId = TacoProtein.Brisket
        case 4:
            self._proteinId = TacoProtein.Fish
        default:
            self._proteinId = TacoProtein.Brisket
        }
        
        // Condiments
        switch condimentId {
        case 2:
            self._condimentId = TacoCondiment.Plain
        default:
            self._condimentId = TacoCondiment.Loaded
        }
        
        _productName = "\(self._condimentId) \(self._shellID!) \(self._proteinId!) Taco"
    }
}
