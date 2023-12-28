//
//  DataModel.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/26/23.
//

import Foundation
import UIKit

struct Menu {
    let name: String
    let image: UIImage
    let price: Int
    var number: Int
}

class Order {
    var menu: [Menu] // 메뉴와 메뉴 갯수
    lazy var totalPrice: Int = 0
    
    init(menu: [Menu], totalPrice: Int) {
        self.menu = menu
    }
    
    func calculateTotalPrice() {
        for `each` in self.menu {
            self.totalPrice += `each`.price * `each`.number
        }
    }
}

var blended: [Menu] = [
    Menu(name: "북한산레몬얼그레이블렌디드", image: UIImage(named:"blended.bukhansamLemonEarlGreyBlended")!, price: 9000, number: 1),
    Menu(name: "코튼스카이요거트블렌디드", image: UIImage(named:"blended.cottonSkyYogurtBlended")!, price: 9800, number: 1),
    Menu(name: "망고바나나블렌디드", image: UIImage(named:"blended.mangoBananaBlended")!, price: 6300, number: 1),
    Menu(name: "망고패션티블렌디드", image: UIImage(named:"blended.mangoPassionTeaBlended")!, price: 5400, number: 1),
    Menu(name: "피치요거트블렌디드", image: UIImage(named:"blended.peachYogurtBlended")!, price: 6100, number: 1),
    Menu(name: "딸기딜라이트요거트블렌디드", image: UIImage(named:"blended.strawberryDelightYogurtBlended")!, price: 6300, number: 1),
    Menu(name: "더그린쑥블렌디드", image: UIImage(named:"blended.theGreenMugwortBlended")!, price: 7200, number: 1),
    Menu(name: "여수바다유자블렌디드", image: UIImage(named:"blended.yeosuSeaYujaBlended")!, price: 9500, number: 1)]

var espresso: [Menu] = [
    Menu(name: "카페 아메리카노", image: UIImage(named: "espresso.caffeAmericano")!, price: 4500, number: 1),
    Menu(name: "카푸치노", image: UIImage(named: "espresso.cappuccino")!, price: 4500, number: 1),
    Menu(name: "카라멜 마키아토", image: UIImage(named: "espresso.caramelMacchiato")!, price: 5900, number: 1),
    Menu(name: "더블 에스프레소 크림 라떼", image: UIImage(named: "espresso.doubleEspressoCreamLatte")!, price: 5900, number: 1),
    Menu(name: "에스프레소 콘 파나", image: UIImage(named: "espresso.espressoConPanna")!, price: 4500, number: 1),
    Menu(name: "마키아토", image: UIImage(named: "espresso.macchiato")!, price: 4500, number: 1),
    Menu(name: "아이스 카페 아메리카노", image: UIImage(named: "espresso.icedCaffeAmericano")!, price: 4500, number: 1),
    Menu(name: "아이스 카푸치노", image: UIImage(named: "espresso.icedCappuccino")!, price: 5900, number: 1),
    Menu(name: "아이스 카라멜 마키아토", image: UIImage(named: "espresso.icedCaramelMacchiato")!, price: 6500, number: 1),
    Menu(name: "아이스 더블 에스프레소 크림 라떼", image: UIImage(named: "espresso.icedDoubleEspressoCreamLatte")!, price: 6500, number: 1),
    Menu(name: "아이스 토피 넛 라떼", image: UIImage(named: "espresso.icedToffeeNutLatte")!, price: 5900, number: 1),
    Menu(name: "라벤더 카페 브레베", image: UIImage(named: "espresso.lavenderCafeBreve")!, price: 6500, number: 1),
    Menu(name: "샤케라토 비안코 오버 아이스", image: UIImage(named: "espresso.shakeratoBiancoOverIce")!, price: 5900, number: 1),
    Menu(name: "스타벅스 돌체 라떼", image: UIImage(named: "espresso.starbucksDolceLatte")!, price: 4500, number: 1),
    Menu(name: "그린 머그워트 크림 라떼", image: UIImage(named: "espresso.theGreenMugwortCreamLatte")!, price: 6500, number: 1),
    Menu(name: "토피 넛 라떼", image: UIImage(named: "espresso.toffeeNutLatte")!, price: 5900, number: 1),
    Menu(name: "바닐라 빈 라떼", image: UIImage(named: "espresso.vanillaBeanLatte")!, price: 6500, number: 1)]

var frappucchino: [Menu] = [
    Menu(name: "캬라멜 프라푸치노", image: UIImage(named: "frappucchino.caramelFrappucchino")!, price: 6500, number: 1),
    Menu(name: "초콜렛 크림 프라푸치노", image: UIImage(named: "frappucchino.chocolateCreamChipFrappucchino")!, price: 6500, number: 1),
    Menu(name: "에스프레소 프라푸치노", image: UIImage(named: "frappucchino.espressoFrappucchino")!, price: 6500, number: 1),
    Menu(name: "자바칩 프라푸치노", image: UIImage(named: "frappucchino.javaChipFrappucchino")!, price: 6500, number: 1),
    Menu(name: "제주 흑임자 크림 프라푸치노", image: UIImage(named: "frappucchino.jejuBlackSesameCreamFrappucchino")!, price: 6500, number: 1),
    Menu(name: "제주 머그워트 크림 프라푸치노", image: UIImage(named: "frappucchino.jejuMugwortCreamFrappucchino")!, price: 6500, number: 1),
    Menu(name: "말차 크림 프라푸치노", image: UIImage(named: "frappucchino.matchaCreamFrappucchinoFromJejuOrganicGreenTea")!, price: 6500, number: 1),
    Menu(name: "피스타치오 아보카도 초콜릿 크림 프라푸치노", image: UIImage(named: "frappucchino.pistachioAvocadoChocolateCreamFrappucchino")!, price: 6500, number: 1),
    Menu(name: "화이트 초콜릿 모카 프라푸치노", image: UIImage(named: "frappucchino.whiteChocolateMochaFrappucchino")!, price: 6500, number: 1),
    Menu(name: "화이트 타이거 프라푸치노", image: UIImage(named: "frappucchino.whiteTigerFrappucchino")!, price: 6500, number: 1)]

var coldBrew: [Menu] = [
    Menu(name: "콜드 브루", image: UIImage(named: "coldBrew.coldBrew")!, price: 4900, number: 1),
    Menu(name: "콜드 브루 플로트", image: UIImage(named: "coldBrew.coldBrewFloat")!, price: 6300, number: 1),
    Menu(name: "콜드 브루 몰트", image: UIImage(named: "coldBrew.coldBrewMalt")!, price: 6300, number: 1),
    Menu(name: "돌체 콜드 브루", image: UIImage(named: "coldBrew.dolceColdBrew")!, price: 6000, number: 1),
    Menu(name: "바닐라 크림 콜드 브루", image: UIImage(named: "coldBrew.vanillaCreamColdBrew")!, price: 5800, number: 1),
    Menu(name: "니트로 콜드 브루", image: UIImage(named: "coldBrew.nitroColdBrew")!, price: 6000, number: 1),
    Menu(name: "제주 산지 직송 콜드 브루", image: UIImage(named: "coldBrew.jejuForestColdBrew")!, price: 6300, number: 1),
    Menu(name: "민트 콜드 브루", image: UIImage(named: "coldBrew.mintColdBrew")!, price: 6000, number: 1),
    Menu(name: "니트로 바닐라 크림", image: UIImage(named: "coldBrew.nitroVanillaCream")!, price: 6100, number: 1),
    Menu(name: "오트 콜드 브루", image: UIImage(named: "coldBrew.oatColdBrew")!, price: 6300, number: 1),
    Menu(name: "리저브 콜드 브루", image: UIImage(named: "coldBrew.reserveColdBrew")!, price: 5400, number: 1),
    Menu(name: "시그니처 더 블랙 콜드 브루", image: UIImage(named: "coldBrew.signatureTheBlackColdBrew")!, price: 6500, number: 1),
    Menu(name: "바닐라 크림 콜드 브루", image: UIImage(named: "coldBrew.vanillaCreamColdBrew")!, price: 5800, number: 1),
    Menu(name: "별다방 우유광택 콜드 브루", image: UIImage(named: "coldBrew.yeosuShiningHazelnutColdBrew")!, price: 6500, number: 1)]
