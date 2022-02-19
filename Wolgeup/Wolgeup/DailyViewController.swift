//
//  DailyViewController.swift
//  Wolgeup
//
//  Created by Jeonggi Hong on 2022/02/14.
//

import Foundation
import UIKit

class DailyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        pageChangedSwipe()
    }
    
    
    
    
    
    
    
}


extension DailyViewController {
        
    func pageChangedSwipe() {
        let upSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(upSwipeGestureAction))
        let downSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(downSwipeGestureAction))
        
        upSwipeGesture.direction = .up
        downSwipeGesture.direction = .down
        
        [
            upSwipeGesture, downSwipeGesture
        ].forEach { view.addGestureRecognizer($0) }
        
    }
    
    @objc func downSwipeGestureAction(gesture: UISwipeGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }

    @objc func upSwipeGestureAction(gesture: UISwipeGestureRecognizer) {
        
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "MonthlyViewController")
        viewController?.modalPresentationStyle = .fullScreen
        viewController?.modalTransitionStyle = .coverVertical
        
        self.present(viewController!, animated: true, completion: nil)
        
    }
    

}
