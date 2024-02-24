//
//  UserViewModel.swift
//  MyMVVMProj
//
//  Created by cho on 2/24/24.
//

import Foundation

//사용자가 알 필요 없는 로직들을 viewModel에 정리
class UserViewModel {
    
    var list = [
        User(name: "moana", age: 33),
        User(name: "greed", age: 32),
        User(name: "이름", age: 13),
        User(name: "하이", age: 59)
    ]
 
    func numberOfRowsInSection() -> Int{
        return list.count
    }
    
    func cellForRowAt(_ indexPath: IndexPath) -> User {
        return list[indexPath.row]
    }
}
