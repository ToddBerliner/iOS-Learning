//
//  BorderButton.swift
//  iOS-Learning
//
//  Created by Todd Berliner on 10/6/18.
//  Copyright © 2018 Todd Berliner. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
