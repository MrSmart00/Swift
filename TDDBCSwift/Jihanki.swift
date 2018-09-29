//
//  Jihanki.swift
//  TDDBCSwift
//
//  Created by HINOMORI HIROYA on 2018/09/29.
//  Copyright © 2018年 tddbc. All rights reserved.
//

import Foundation

enum Drink: String {
    case coke = "コーラ"
    case oolong = "烏龍茶"
    case coffee = "コーヒー"
}

struct Jihanki{
    func buttonPush(money: Int, drink: Drink) -> String?{
        if money == 100{
            return drink.rawValue
        }
        return nil
    }
}
