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

class Jihanki{
    
    var deposit: Int = 0
    
    let itemList = [
        DrinkType.coke: 100,
        DrinkType.oolong: 100,
        DrinkType.coffee: 100,
        DrinkType.redbull: 200
    ]
    
    func insert100en() {
        deposit += 100
    }
    
    func pushButton(drink: DrinkType) -> String? {
        if let price = itemList[drink], price <= deposit {
            deposit -= price
            return drink.rawValue
        } else {
            return nil
        }
    }
}
