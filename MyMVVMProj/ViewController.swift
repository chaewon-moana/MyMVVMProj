//
//  ViewController.swift
//  MyMVVMProj
//
//  Created by cho on 2/23/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    let viewModel = NumberViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberTextField.addTarget(self, action: #selector(numberTextFieldChanged), for: .editingChanged)
    }

    @objc func numberTextFieldChanged() {
        viewModel.inputText = numberTextField.text
        resultLabel.text = viewModel.outputResult
        
//        guard let text = numberTextField.text else { return }
//        if text.isEmpty {
//            resultLabel.text = "값을 입력해주세요"
//        }
//        
//        guard let num = Int(text) else {
//            resultLabel.text = "숫자만 입력해주세요"
//            return
//        }
//        
//        if num > 0, num <= 1000000 {
//            let format = NumberFormatter()
//            format.numberStyle = .decimal
//            if let result = format.string(for: num) {
//                resultLabel.text = "\(result)원"
//            }
//        } else {
//            resultLabel.text = "백만원 이하로 입력해주세여"
//        }
    }

}

