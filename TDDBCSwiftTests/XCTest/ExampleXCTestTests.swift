import XCTest
@testable import TDDBCSwift

// TODO: [*] 100円を入れるとコーラが出る
// TODO: [*] 100円以外は入れられない
// TODO: [*] ボタンを押すと烏龍茶が出る
// TODO: [*] 200円でレッドブルが買える
// TODO: [*] MoneyのIntをリファクタリングする


class ExampleXCTestTests: XCTestCase {
    
    func test100円を入れるとコーラが出る() {
        let jihanki = Jihanki()
        jihanki.insert100en()
        let result = jihanki.buttonPush(drink: Drink.coke)
        XCTAssert(result == "コーラ")
    }
    
    func test100円を入れると烏龍茶が出る() {
        let jihanki = Jihanki()
        jihanki.insert100en()
        let result = jihanki.buttonPush(drink: Drink.oolong)
        XCTAssert(result == "烏龍茶")
    }

    func test200円を入れるとレッドブルが出る() {
        let jihanki = Jihanki()
        jihanki.insert100en()
        jihanki.insert100en()
        let result = jihanki.buttonPush(drink: Drink.redbull)
        XCTAssert(result == "レッドブル")
    }

}
