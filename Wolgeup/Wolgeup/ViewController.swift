//
//  ViewController.swift
//  Wolgeup
//
//  Created by Jeonggi Hong on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageChangedSwipe()
    }


}


extension ViewController {
        
        func pageChangedSwipe() {
            let upSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(upSwipeGestureAction))
            
            upSwipeGesture.direction = .up
            view.addGestureRecognizer(upSwipeGesture)
        }
        
        @objc func upSwipeGestureAction(gesture: UISwipeGestureRecognizer) {
            
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "DailyViewController")
            viewController?.modalPresentationStyle = .fullScreen
            viewController?.modalTransitionStyle = .coverVertical
            
            self.present(viewController!, animated: true, completion: nil)
            
        }

}
