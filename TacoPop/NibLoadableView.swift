//
//  NibLoadableView.swift
//  TacoPop
//
//  Created by Chase McElroy on 4/18/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
