//
//  MenuViewModel.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import Foundation

struct MenuViewModel {
    private(set) var menus: [MenuModel] = [
        MenuModel(imageName: "Menu1", korName: "아이스 카스텔라 고구마 라떼", engName: "Iced Castella Sweet Potato Milk", price: 6900),
        MenuModel(imageName: "Menu2", korName: "아이스 말차 글레이즈드 티 라떼", engName: "Iced Malcha Glazed Tea Latte", price: 6700),
        MenuModel(imageName: "Menu3", korName: "스타벅스 자몽 허니 에어로카노", engName: "Starbucks GrapeFruit Honey Aerocano", price: 6100)
    ]
}
