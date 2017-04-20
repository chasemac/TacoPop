//
//  ReusableView.swift
//  TacoPop
//
//  Created by Chase McElroy on 4/18/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import UIKit

protocol ReusableView: class {}


extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
