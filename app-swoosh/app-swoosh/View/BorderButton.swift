//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Islam Swira on 7/8/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
