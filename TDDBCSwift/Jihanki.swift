//
//  Jihanki.swift
//  TDDBCSwift
//
//  Created by HINOMORI HIROYA on 2018/09/29.
//  Copyright © 2018年 tddbc. All rights reserved.
//

import Foundation

enum DrinkType: String {
    case coke = "コーラ"
    case oolong = "烏龍茶"
    case coffee = "コーヒー"
    case redbull = "レッドブル"
}

struct Drink {
    var name: DrinkType
    var price: Int
}

class Jihanki{
    
    var deposit: Int = 0
    
    func insert100en() {
        deposit += 100
    }
    
    func buttonPush(drink: Drink) -> String? {
        if drink.price <= deposit {
            return drink.name.rawValue
        }
        return nil
    }
}
