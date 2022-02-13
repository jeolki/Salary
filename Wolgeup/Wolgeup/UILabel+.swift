//
//  UILabel+.swift
//  Wolgeup
//
//  Created by Jeonggi Hong on 2022/02/13.
//

import UIKit

extension UILabel {
    
    func setText(inputText:String, fontSize: CGFloat, fontWeight: UIFont.Weight) {
        
        text = inputText
        font = .systemFont(ofSize: fontSize, weight: fontWeight)
    }
    
}
