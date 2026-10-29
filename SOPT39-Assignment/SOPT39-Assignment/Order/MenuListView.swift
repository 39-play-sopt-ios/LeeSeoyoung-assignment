//
//  MenuListView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct MenuListView: View {
    let categoryName: String
    @State private var viewModel = MenuViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            TopNavigationView(isChildView: true)
            TitleHeaderView(title: categoryName)
            
            List(viewModel.menus) { menu in
                menuRow(for: menu)
            }
            .listStyle(.plain)
        }
    }
    
    private func menuRow(for menu: MenuModel) -> some View {
        let isFirstMenu = menu.id == viewModel.menus.first?.id
        let isLastMenu = menu.id == viewModel.menus.last?.id
        
        return MenuListRowView(
            image: menu.imageName,
            korName: menu.korName,
            engName: menu.engName,
            price: menu.price
        )
        .listRowInsets(
            EdgeInsets(
                top: isFirstMenu ? 28 : 0,
                leading: 21,
                bottom: 0,
                trailing: 0
            )
        )
        .listRowSeparator(.hidden)
        .padding(.bottom, isLastMenu ? 150 : 0)
    }
}
