//
//  OrderView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct OrderView: View {
    @State private var viewModel = OrderCategoryViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            TopNavigationView(isChildView: false)
            
            TitleHeaderView(title: "Order")
            
            MenuTabBar()
            
            HStack(alignment: .center, spacing: 28) {
                Text("음료")
                    .font(.subhead4)
                    .foregroundStyle(.black)
                Text("푸드")
                    .font(.subhead4)
                    .foregroundStyle(.gray300)
                Text("상품")
                    .font(.subhead4)
                    .foregroundStyle(.gray300)
            }
            .padding(.horizontal, 42)
            .padding(.vertical, 18)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(alignment: .bottom) {
                Rectangle().fill(.gray.opacity(0.25)).frame(height: 1)
            }
            
            List(viewModel.categories) { category in
                CategoryListRowView(image: category.thumbnailImageName, name: category.categoryName)
                    .listRowInsets(
                        EdgeInsets(
                            top: category.id == viewModel.categories.first?.id ? 26 : 0,
                            leading: 28,
                            bottom: 21,
                            trailing: 0
                        )
                    )
                    .listRowSeparator(.hidden)
                    .padding(.bottom, category.id == viewModel.categories.last?.id ? 150 : 0)
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    OrderView()
}
