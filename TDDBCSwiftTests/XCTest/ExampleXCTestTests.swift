import XCTest
@testable import TDDBCSwift

// TODO: [*] 100円を入れるとコーラが出る
// TODO: [*] 100円以外は入れられない
// TODO: [*] ボタンを押すと烏龍茶が出る
// TODO: [*] 200円でレッドブルが買える
// TODO: [*] MoneyのIntをリファクタリングする
// TODO: [*] 100円を入れてもレッドブルが買えない
// TODO: [] ドリンクの値段のリファクタリングする(要検討)
// TODO: [*] 100円入れてボタン複数回押してもドリンクは一本しか出ない


class ExampleXCTestTests: XCTestCase {
    
    func test100円を入れるとコーラが出る() {
        let jihanki = Jihanki()
        jihanki.insert100en()
        let coke = Drink(name: DrinkType.coke, price: 100)
        let result = jihanki.buttonPush(drink: coke)
        XCTAssert(result == "コーラ")
    }
    
    func test100円を入れると烏龍茶が出る() {
        let jihanki = Jihanki()
        jihanki.insert100en()
        let oolong = Drink(name: DrinkType.oolong, price: 100)
        let result = jihanki.buttonPush(drink: oolong)
        XCTAssert(result == "烏龍茶")
    }

    func test200円を入れるとレッドブルが出る() {
        let jihanki = Jihanki()
        jihanki.insert100en()
        jihanki.insert100en()
        let redbull = Drink(name: DrinkType.redbull, price: 200)
        let result = jihanki.buttonPush(drink: redbull)
        XCTAssert(result == "レッドブル")
    }

    func test100円を入れてもレッドブルが買えない() {
        let jihanki = Jihanki()
        jihanki.insert100en()
        let redbull = Drink(name: DrinkType.redbull, price: 200)
        let result = jihanki.buttonPush(drink: redbull)
        XCTAssert(result == nil)
    }
    
    func test100円入れてボタン複数回押してもドリンクは一本しか出ない() {
        let jihanki = Jihanki()
        jihanki.insert100en()
        let coke = Drink(name: DrinkType.coke, price: 100)
        let result1 = jihanki.buttonPush(drink: coke)
        let result2 = jihanki.buttonPush(drink: coke)
        XCTAssert(result1 == "コーラ" && result2 == nil)
    }
}
