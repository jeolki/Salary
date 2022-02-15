//
//  YearlyViewController.swift
//  Wolgeup
//
//  Created by Jeonggi Hong on 2022/02/14.
//

import Foundation
import UIKit

class YearlyViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageChangedSwipe()
    }
}

extension YearlyViewController {
        
        func pageChangedSwipe() {
            let downSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(upSwipeGestureAction))
            
            downSwipeGesture.direction = .down
            view.addGestureRecognizer(downSwipeGesture)
        }
        
        @objc func upSwipeGestureAction(gesture: UISwipeGestureRecognizer) {
            
            self.dismiss(animated: true, completion: nil)
            
        }

}
