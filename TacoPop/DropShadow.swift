//
//  DropShadow.swift
//  TacoPop
//
//  Created by Chase McElroy on 4/18/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        //implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
