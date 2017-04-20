//
//  DataService.swift
//  TacoPop
//
//  Created by Chase McElroy on 4/18/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func deliciousTacoDataLoaded()
}

class DataService {
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var tacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData() {
        
        var shellId = 1
        var proteinId = 1
        var condimentId = 1
        let totalIds = 16
        
        for id in 0..<totalIds {
            proteinId = id%4 + 1
            
            switch id - proteinId {
            case -1:
                condimentId = shellId
            case 3:
                shellId = 2
                condimentId = shellId%2 + 1
            case 7:
                shellId = 1
                condimentId = shellId%2 + 1
            default:
                shellId = 2
                condimentId = shellId
            }
            tacoArray.append(Taco(id: id, shellId: shellId, proteinId: proteinId, condimentId: condimentId))
        }
        
        delegate?.deliciousTacoDataLoaded()
    }
}
