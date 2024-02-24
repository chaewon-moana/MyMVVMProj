//
//  NumberViewModel.swift
//  MyMVVMProj
//
//  Created by cho on 2/24/24.
//

import Foundation

class NumberViewModel {
    
    var inputText: String? = "" {
        didSet {
            numberVaildation()
        }
    }
    var outputResult = Observable("")
    
    private func numberVaildation() {
        guard let text = inputText else { return }
        if text.isEmpty {
            outputResult.value = "값을 입력해주세요"
        }
        
        guard let num = Int(text) else {
            outputResult.value = "숫자만 입력해주세요"
            return
        }
        
        if num > 0, num <= 1000000 {
            let format = NumberFormatter()
            format.numberStyle = .decimal
            if let result = format.string(for: num) {
                outputResult.value = "\(result)원"
            }
        } else {
            outputResult.value = "백만원 이하로 입력해주세여"
        }
    }
}
