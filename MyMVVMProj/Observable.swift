//
//  Observable.swift
//  MyMVVMProj
//
//  Created by cho on 2/24/24.
//

import Foundation
//실시간으로 달라지는 데이터를 감지하는 역할
class Observable {
    private var closure: (() -> Void)?
    
    var value: String {
        didSet {
            closure?()
        }
    }
    
    init(_ value: String) {
        self.value = value
    }
    
    func bind(_ closure: @escaping () -> Void) {
        print("bind")
        self.closure = closure
    }
}
