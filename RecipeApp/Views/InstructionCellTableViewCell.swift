//
//  InstructionCell.swift
//  RecipeApp
//
//  Created by Hasan Akoglu on 20/02/2018.
//  Copyright © 2018 ford. All rights reserved.
//

import UIKit

class InstructionCell: UITableViewCell {
    
    @IBOutlet var checkmarkButton: UIButton!
    @IBOutlet var descriptionLabel: UILabel!
    
    
    func configure(_ description: String) {
        descriptionLabel.text = description
    }
    
//    @IBAction func checkmarkTapped(_ sender: AnyObject) {
//        shouldStrikeThroughText(!checkmarkButton.isSelected)
//    }
    
    func shouldStrikeThroughText(_ strikeThrough :Bool) {
        guard let text = descriptionLabel.text else {
            return
        }
        
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: text)
        
        checkmarkButton.isAccessibilityElement = false
        
        if strikeThrough {
            descriptionLabel.accessibilityLabel = "Completed: \(text)"
        attributeString.addAttribute(NSAttributedStringKey.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        } else {
            descriptionLabel.accessibilityLabel = "Uncompleted: \(text)"
        }
        
        checkmarkButton.isSelected = strikeThrough
        
        descriptionLabel.attributedText = attributeString
    }

}
