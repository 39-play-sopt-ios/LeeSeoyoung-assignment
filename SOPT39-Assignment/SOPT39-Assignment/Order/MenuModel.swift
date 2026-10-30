//
//  MenuModel.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import Foundation

struct MenuModel: Identifiable {
    let id = UUID()
    let imageName: String
    let korName: String
    let engName: String
    let price: Int
    let description: String
    var isLiked: Bool
}
