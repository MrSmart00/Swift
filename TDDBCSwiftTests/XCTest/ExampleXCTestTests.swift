import XCTest
@testable import TDDBCSwift

// TODO: [*] ボタンを押すとコーラが出る
// TODO: [*] 100円を入れるとコーラが出る
// TODO: [*] 100円以外は入れられない
// TODO: [*] ボタンを押すと烏龍茶が出る
// TODO: [*] 他の飲み物を追加


class ExampleXCTestTests: XCTestCase {
    
    func testボタンを押すとコーラが出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush()
        XCTAssert(result == "コーラ")
    }
    
    func test100円を入れるとコーラが出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush(money: 100, drink: Drink.coke)
        XCTAssert(result == "コーラ")
    }
    
    func test100円以外は入れられない() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush(money: 101, drink: Drink.coke)
        XCTAssert(result != "コーラ")
    }
    
    func test100円を入れると烏龍茶が出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush(money: 100, drink: Drink.oolong)
        XCTAssert(result == "烏龍茶")
    }

    func test100円を入れるとコーヒーが出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush(money: 100, drink: Drink.coffee)
        XCTAssert(result == "コーヒー")
    }
}
