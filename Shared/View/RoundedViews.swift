//
//  RoundedViews.swift
//  MobileStore
//
//  Created by Macklin Thomas on 4/13/20.
//  Copyright © 2020 Macklin Thomas. All rights reserved.
//

import UIKit


class RoundedButton: UIButton {
    override func awakeFromNib() {
        layer.cornerRadius = 5
    }
}


class RoundedShadowView: UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 5
        layer.shadowColor = AppColors.Blue.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
    }
}

class RoundedImageView : UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
}
