//
//  Jihanki.swift
//  TDDBCSwift
//
//  Created by HINOMORI HIROYA on 2018/09/29.
//  Copyright © 2018年 tddbc. All rights reserved.
//

import Foundation

struct Jihanki{
    func buttonPush() -> String{
        return "コーラ"
    }
    
    func buttonPush(money: Int, drink: String) -> String?{
        if money == 100{
            return drink
        }
        return nil
    }
}
