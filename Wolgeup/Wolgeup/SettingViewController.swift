//
//  SettingViewController.swift
//  Wolgeup
//
//  Created by Jeonggi Hong on 2022/02/11.
//

import Foundation
import UIKit
import SnapKit

final class SettingViewController: UIViewController {
    
    let fontSize: CGFloat = 34.0
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.text = "나는"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.text = "매달"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var dayTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: fontSize, weight: .regular)
        textField.placeholder = "10"
        textField.keyboardType = .numberPad
        textField.textAlignment = .right
        textField.minimumFontSize = fontSize
        
        return textField
    }()
    
    private lazy var thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "일 에"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var moneyTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: fontSize, weight: .regular)
        textField.placeholder = "2,400,000"
        textField.keyboardType = .numberPad
        textField.minimumFontSize = fontSize
    
        return textField
    }()
    
    private lazy var fourthLabel: UILabel = {
        let label = UILabel()
        label.text = "원"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var fifthLabel: UILabel = {
        let label = UILabel()
        label.text = "받는다."
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var sixthLabel: UILabel = {
        let label = UILabel()
        label.text = "매주"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var mondayButton: UIButton = {
        let button = UIButton()
        button.setTitle("월", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: fontSize, weight: .regular)
        return button
    }()
    
    private lazy var tuesdayButton: UIButton = {
        let button = UIButton()
        button.setTitle("화", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: fontSize, weight: .regular)
//        button.addTarget(self, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return button
    }()
    
    private lazy var wednesButton: UIButton = {
        let button = UIButton()
        button.setTitle("수", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: fontSize, weight: .regular)
        return button
    }()
    
    private lazy var thursButton: UIButton = {
        let button = UIButton()
        button.setTitle("목", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: fontSize, weight: .regular)
        return button
    }()
    
    private lazy var fridayButton: UIButton = {
        let button = UIButton()
        button.setTitle("금", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: fontSize, weight: .regular)
        return button
    }()
    
    private lazy var saturdayButton: UIButton = {
        let button = UIButton()
        button.setTitle("토", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: fontSize, weight: .regular)
        return button
    }()
    
    private lazy var sundayButton: UIButton = {
        let button = UIButton()
        button.setTitle("일", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: fontSize, weight: .regular)
        return button
    }()
    
    private lazy var dayLabel: UILabel = {
        let label = UILabel()
        label.text = "요일에"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var startHourTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: fontSize, weight: .regular)
        textField.placeholder = "09"
        textField.keyboardType = .numberPad
        textField.minimumFontSize = fontSize
        return textField
    }()
    
    private lazy var startHourLabel: UILabel = {
        let label = UILabel()
        label.text = "시"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var startMinTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: fontSize, weight: .regular)
        textField.placeholder = "00"
        textField.keyboardType = .numberPad
        textField.minimumFontSize = fontSize
        return textField
    }()
    
    private lazy var startMinLabel: UILabel = {
        let label = UILabel()
        label.text = "분 부터"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var endHourTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: fontSize, weight: .regular)
        textField.placeholder = "18"
        textField.keyboardType = .numberPad
        textField.minimumFontSize = fontSize
        return textField
    }()
    
    private lazy var endHourLabel: UILabel = {
        let label = UILabel()
        label.text = "시"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var endMinTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: fontSize, weight: .regular)
        textField.placeholder = "00"
        textField.keyboardType = .numberPad
        textField.textAlignment = .right
        textField.minimumFontSize = fontSize
        return textField
    }()
    
    private lazy var endMinLabel: UILabel = {
        let label = UILabel()
        label.text = "분 까지"
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
    private lazy var workLabel: UILabel = {
        let label = UILabel()
        label.text = "일한다."
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        return label
    }()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setupLayout()
        pageChangedSwipe()
    }
    
    
    
    private func setupLayout() {
        
        let dayStackView = UIStackView( arrangedSubviews:[
                                                            mondayButton,
                                                            tuesdayButton,
                                                            wednesButton,
                                                            thursButton,
                                                            fridayButton,
                                                            saturdayButton,
                                                            sundayButton
                                                        ])
        dayStackView.axis = .horizontal
        dayStackView.spacing = 3.0
        
        
        [
            firstLabel,
            secondLabel,dayTextField,thirdLabel,
            moneyTextField,fourthLabel,
            fifthLabel,
            sixthLabel,
            dayStackView,
            dayLabel,
            startHourTextField,startHourLabel,startMinTextField,startMinLabel,
            endHourTextField,endHourLabel,endMinTextField,endMinLabel,
            workLabel
            
        ]
            .forEach { view.addSubview($0) }
        
        firstLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(150)
            $0.leading.equalToSuperview().offset(45)
        }
        
        secondLabel.snp.makeConstraints {
            $0.top.equalTo(firstLabel.snp.top).offset(45)
            $0.leading.equalTo(firstLabel.snp.leading)
        }
        
        dayTextField.snp.makeConstraints {
            $0.top.equalTo(secondLabel.snp.top)
            $0.leading.equalTo(secondLabel.snp.leading).offset(80)
            $0.width.equalTo(40)
            $0.height.equalTo(45)
        }
        
        thirdLabel.snp.makeConstraints {
            $0.top.equalTo(dayTextField.snp.top)
            $0.leading.equalTo(dayTextField.snp.leading).offset(40)
        }
        
        moneyTextField.snp.makeConstraints {
            $0.top.equalTo(dayTextField.snp.top).offset(45)
            $0.leading.equalTo(secondLabel.snp.leading)
            $0.width.equalTo(170)
        }
        
        fourthLabel.snp.makeConstraints {
            $0.top.equalTo(moneyTextField.snp.top)
            $0.leading.equalTo(moneyTextField.snp.leading).offset(165)
        }
        
        fifthLabel.snp.makeConstraints {
            $0.top.equalTo(moneyTextField.snp.top).offset(45)
            $0.leading.equalTo(moneyTextField.snp.leading)
        }
        
        sixthLabel.snp.makeConstraints {
            $0.top.equalTo(fifthLabel.snp.top).offset(70)
            $0.leading.equalTo(fifthLabel.snp.leading)
        }
        
        dayStackView.snp.makeConstraints {
            $0.top.equalTo(sixthLabel.snp.top).offset(45)
            $0.leading.equalTo(sixthLabel.snp.leading)
            $0.height.equalTo(34)
        }
        
        dayLabel.snp.makeConstraints {
            $0.top.equalTo(dayStackView.snp.top).offset(40)
            $0.leading.equalTo(dayStackView.snp.leading)
        }
        
        startHourTextField.snp.makeConstraints {
            $0.top.equalTo(dayLabel.snp.top).offset(45)
            $0.leading.equalTo(dayLabel.snp.leading)
            $0.width.equalTo(45)
            $0.height.equalTo(40)
        }
        
        startHourLabel.snp.makeConstraints {
            $0.top.equalTo(startHourTextField.snp.top)
            $0.leading.equalTo(startHourTextField.snp.leading).offset(45)
        }
        
        startMinTextField.snp.makeConstraints {
            $0.top.equalTo(startHourLabel.snp.top)
            $0.leading.equalTo(startHourLabel.snp.leading).offset(40)
            $0.width.equalTo(45)
            $0.height.equalTo(40)
        }
        
        startMinLabel.snp.makeConstraints {
            $0.top.equalTo(startMinTextField.snp.top)
            $0.leading.equalTo(startMinTextField.snp.leading).offset(45)
        }
        
        endHourTextField.snp.makeConstraints {
            $0.top.equalTo(startHourTextField.snp.top).offset(45)
            $0.leading.equalTo(startHourTextField.snp.leading)
            $0.width.equalTo(45)
            $0.height.equalTo(40)
        }
        
        endHourLabel.snp.makeConstraints {
            $0.top.equalTo(endHourTextField.snp.top)
            $0.leading.equalTo(endHourTextField.snp.leading).offset(45)
        }
        
        endMinTextField.snp.makeConstraints {
            $0.top.equalTo(endHourLabel.snp.top)
            $0.leading.equalTo(endHourLabel.snp.leading).offset(40)
            $0.width.equalTo(45)
            $0.height.equalTo(40)
        }
        
        endMinLabel.snp.makeConstraints {
            $0.top.equalTo(endMinTextField.snp.top)
            $0.leading.equalTo(endMinTextField.snp.leading).offset(45)
        }
        
        workLabel.snp.makeConstraints {
            $0.top.equalTo(endHourTextField.snp.top).offset(45)
            $0.leading.equalTo(endHourTextField.snp.leading)
        }
        
    }
    
}


extension SettingViewController {
    
    func pageChangedSwipe() {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureAction))
        
        swipeGesture.direction = .up
        view.addGestureRecognizer(swipeGesture)
    }
    
    @objc func swipeGestureAction(gesture: UISwipeGestureRecognizer) {
        print(gesture.direction, "up")
    }
    
}
