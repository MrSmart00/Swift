import XCTest
@testable import TDDBCSwift

// TODO: [*] 100円を入れるとコーラが出る
// TODO: [*] 100円以外は入れられない
// TODO: [*] ボタンを押すと烏龍茶が出る
// TODO: [*] 200円でレッドブルが買える
// TODO: [*] MoneyのIntをリファクタリングする
// TODO: [*] 100円を入れてもレッドブルが買えない
// TODO: [*] ドリンクの値段のリファクタリングする(要検討)
// TODO: [*] 100円入れてボタン複数回押してもドリンクは一本しか出ない
// TODO: [*] 入れたお金に応じて、買えるもののボタンが光る
// TODO: [*] 10円、50円、500円も使えるようになる
// TODO: [*] お釣りが返ってくる

class ExampleXCTestTests: XCTestCase {
    
    func createEnptyJihanki() -> Jihanki{
        return Jihanki()
    }
    
    func create100YenJihanki() -> Jihanki{
        let jihanki = Jihanki()
        jihanki.insert(.hundred)
        return jihanki
    }

    func create200YenJihanki() -> Jihanki{
        let jihanki = Jihanki()
        jihanki.insert(.hundred)
        jihanki.insert(.hundred)
        return jihanki
    }

    func test100円を入れるとコーラが出る() {
        let jihanki = createEnptyJihanki()
        jihanki.insert(.hundred)
        let result = jihanki.pushButton(drink: .coke)
        XCTAssert(result.name == "コーラ")
    }
    
    func test100円を入れると烏龍茶が出る() {
        let jihanki = create100YenJihanki()
        let result = jihanki.pushButton(drink: .oolong)
        XCTAssert(result.name == "烏龍茶")
    }

    func test200円を入れるとレッドブルが出る() {
        let jihanki = create200YenJihanki()
        let result = jihanki.pushButton(drink: .redbull)
        XCTAssert(result.name == "レッドブル")
    }

    func test100円を入れてもレッドブルが買えない() {
        let jihanki = create100YenJihanki()
        let result = jihanki.pushButton(drink: .redbull)
        XCTAssert(result.name == nil)
    }
    
    func test100円入れてボタン複数回押してもドリンクは一本しか出ない() {
        let jihanki = create100YenJihanki()
        let result1 = jihanki.pushButton(drink: .coke)
        let result2 = jihanki.pushButton(drink: .coke)
        XCTAssert(result1.name == "コーラ" && result2.name == nil)
    }
    
    func test100円入れるとコーラボタンが光る() {
        let jihanki = create100YenJihanki()
        let result = jihanki.isEnable(.coke)
        XCTAssert(result)
    }
    
    func test100円入れてもレッドブルボタンが光らない() {
        let jihanki = create100YenJihanki()
        let result = jihanki.isEnable(.redbull)
        XCTAssertFalse(result)
    }

    func test500円も使えるようになる() {
        let jihanki = createEnptyJihanki()
        jihanki.insert(.fiveHundred)
        let result = jihanki.pushButton(drink: .coke)
        XCTAssert(result.name == "コーラ")
    }
    
    func test10円と50円が使えるようになる() {
        let jihanki = createEnptyJihanki()
        jihanki.insert(.ten)
        jihanki.insert(.ten)
        jihanki.insert(.ten)
        jihanki.insert(.ten)
        jihanki.insert(.ten)
        jihanki.insert(.fifty)
        let result = jihanki.pushButton(drink: .coke)
        XCTAssert(result.name == "コーラ")
    }
    
    func testお釣りが返ってくる() {
        let jihanki = create100YenJihanki()
        jihanki.insert(.ten)
        jihanki.insert(.ten)
        let result = jihanki.pushButton(drink: .coke)
        XCTAssert(result.change == 20)
    }
}
