//
//  ViewController.swift
//  Salary
//
//  Created by Jeonggi Hong on 2022/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var mondayButton: UIButton!
    @IBOutlet weak var tuesdayButton: UIButton!
    @IBOutlet weak var wednesdayButton: UIButton!
    @IBOutlet weak var thursdayButton: UIButton!
    @IBOutlet weak var fridayButton: UIButton!
    @IBOutlet weak var saturdayButton: UIButton!
    @IBOutlet weak var sundayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
    }
    
    @IBAction func tabMonButton(_ sender: UIButton) {
        print("mon")
        
        if mondayButton.isSelected {
            mondayButton.isSelected = false
        } else {
            mondayButton.isSelected = true
        }
    }
    
  
    
}

// MARK: ScrollViewDelegate
extension ViewController: UIScrollViewDelegate {
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("\(velocity)")
    }
}
