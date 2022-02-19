//
//  ViewController.swift
//  Wolgeup
//
//  Created by Jeonggi Hong on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var moneyTextField: UITextField!
    
    @IBOutlet weak var startHourTextField: UITextField!
    @IBOutlet weak var startMinTextField: UITextField!
    
    @IBOutlet weak var endHourTextField: UITextField!
    @IBOutlet weak var endMinTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dayTextField.delegate = self
        self.moneyTextField.delegate = self
        self.startHourTextField.delegate = self
        self.startMinTextField.delegate = self
        self.endHourTextField.delegate = self
        self.endMinTextField.delegate = self
        
        swipeGesture()
    }
    
    
    @IBAction func downButton(_ sender: UIButton) {
        changedPage()
    }
    
    
    @IBAction func mondayButton(_ sender: UIButton) {
        selectedButton(sender: sender)
    }
    
    @IBAction func tuesdayButton(_ sender: UIButton) {
        selectedButton(sender: sender)
    }
    
    @IBAction func wednesdayButton(_ sender: UIButton) {
        selectedButton(sender: sender)
    }
    
    @IBAction func thursdayButton(_ sender: UIButton) {
        selectedButton(sender: sender)
    }
    
    @IBAction func fridayButton(_ sender: UIButton) {
        selectedButton(sender: sender)
    }
    
    @IBAction func saturdayButton(_ sender: UIButton) {
        selectedButton(sender: sender)
    }
    
    @IBAction func sundayButton(_ sender: UIButton) {
        selectedButton(sender: sender)
    }
    
    
    private func selectedButton(sender: UIButton) {
        if sender.isSelected == true {
            sender.isSelected = false
            
        } else if sender.isSelected == false {
            sender.isSelected = true
        }
    }
    
    func checkMaxLength(textField: UITextField!, maxLength: Int) {
        if (textField.text?.count ?? 0 > maxLength) {
            textField.deleteBackward()
        }
    }

    
    @IBAction func dayTextChanged(_ sender: UITextField) {
        checkMaxLength(textField: sender, maxLength: 2)
    }
    
    
    @IBAction func moneyTextChanged(_ sender: UITextField) {
    }
    
    
    
}


extension ViewController {
    

    private func swipeGesture() {
        let upSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(upSwipeGestureAction))
        upSwipeGesture.direction = .up
        view.addGestureRecognizer(upSwipeGesture)
    }
    
    @objc func upSwipeGestureAction(gesture: UISwipeGestureRecognizer) { changedPage() }

    private func changedPage() {
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "DailyViewController")
        
//        print("\(self.dayTextField.text ?? "dd")")
        
        // 페이지의 형태와 애니메이션 설정
        viewController?.modalPresentationStyle = .fullScreen
        viewController?.modalTransitionStyle = .coverVertical
        
        self.present(viewController!, animated: true, completion: nil)
    }

}


extension ViewController: UITextFieldDelegate {

    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField == dayTextField {
            print("dd")
        }
    }

}
