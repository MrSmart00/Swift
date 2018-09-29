//
//  Jihanki.swift
//  TDDBCSwift
//
//  Created by HINOMORI HIROYA on 2018/09/29.
//  Copyright © 2018年 tddbc. All rights reserved.
//

import Foundation

enum CoinType: Int {
    case ten = 10
    case fifty = 50
    case hundred = 100
    case fiveHundred = 500
}

enum DrinkType: String {
    case coke = "コーラ"
    case oolong = "烏龍茶"
    case coffee = "コーヒー"
    case redbull = "レッドブル"
}

class Jihanki{
    
    var deposit: Int = 0
    
    let itemList = [
        DrinkType.coke: 100,
        DrinkType.oolong: 100,
        DrinkType.coffee: 100,
        DrinkType.redbull: 200
    ]
    
    func insert(_ coinType: CoinType) {
        deposit += coinType.rawValue
    }
    
    func pushButton(drink: DrinkType) -> String? {
        if let price = itemList[drink], price <= deposit {
            deposit -= price
            return drink.rawValue
        } else {
            return nil
        }
    }
    
    func isEnable(_ drink: DrinkType) -> Bool{
        if let price = itemList[drink], price <= deposit {
            return true
        } else {
            return false
        }
    }
}
