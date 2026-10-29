//
//  OrderCategoryViewModel.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import Foundation

struct OrderCategoryViewModel {
    private(set) var categories: [OrderCategoryModel] = [
        OrderCategoryModel(thumbnailImageName: "Category1", categoryName: "New"),
        OrderCategoryModel(thumbnailImageName: "Category2", categoryName: "추천"),
        OrderCategoryModel(thumbnailImageName: "Category3", categoryName: "콜드 브루"),
        OrderCategoryModel(thumbnailImageName: "Category4", categoryName: "블론드"),
        OrderCategoryModel(thumbnailImageName: "Category5", categoryName: "에스프레소")
    ]
}
