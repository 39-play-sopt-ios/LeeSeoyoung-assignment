//
//  MenuViewModel.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import Foundation

struct MenuViewModel {
    private(set) var menus: [MenuModel] = [
        MenuModel(
            imageName: "Menu1",
            korName: "아이스 카스텔라 고구마 라떼",
            engName: "Iced Castella Sweet Potato Milk",
            price: 6900,
            description: "가을에 잘 어울리는 군고구마를 한 잔에 담은 음료.\n포슬한 카스텔라, 쫀득한 펄이 어우러져 다채로운 식감을 즐길 수 있는 음료."
        ),
        MenuModel(
            imageName: "Menu2",
            korName: "아이스 말차 글레이즈드 티 라떼",
            engName: "Iced Malcha Glazed Tea Latte",
            price: 6700,
            description: "글레이즈드의 색다른 변신! 쌉싸름한 말차와 달콤한 글레이즈드 소스를 넣어 조화롭게 즐기기 좋은 비주얼과 맛의 티 라떼 음료"
        ),
        MenuModel(
            imageName: "Menu3",
            korName: "스타벅스 자몽 허니 에어로카노",
            engName: "Starbucks GrapeFruit Honey Aerocano",
            price: 6100,
            description: "상큼한 자몽의 풍미와 벨벳같은 미세한 거품으로 부드러운 목넘김이 조화롭게 어우러져 밝고 산뜻하면서도 균형 잡힌 맛을 선사하는 에어로카노"
        )
    ]
}
