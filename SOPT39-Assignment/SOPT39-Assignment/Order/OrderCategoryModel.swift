//
//  OrderCategoryModel.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import Foundation

struct OrderCategoryModel: Identifiable {
    let id = UUID()
    let thumbnailImageName: String
    let categoryName: String
}
