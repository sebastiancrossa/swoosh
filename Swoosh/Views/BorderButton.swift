//
//  BorderButton.swift
//  Swoosh
//
//  Created by Sebastian Crossa on 7/26/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
