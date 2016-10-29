//
//  RatingControl.swift
//  example-ios
//
//  Created by Gaurav Gupta on 10/28/16.
//  Copyright © 2016 Gaurav Gupta. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
        addSubview(button)
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 240, height: 44)
    }

    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed")
    }

}
