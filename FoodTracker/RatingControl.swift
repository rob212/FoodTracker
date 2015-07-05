//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Robert McBryde on 28/06/2015.
//  Copyright © 2015 Robert McBryde. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    
    // MARK: Initializer
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<5 {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.redColor()
            button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
            ratingButtons.append(button)
            addSubview(button)
        }
    }
    
//    override func layoutSubviews() {
//        
//    }
    
    // MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("rating button tapped")
    }
    
}
