//
//  OrderView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct OrderView: View {
    @State private var viewModel = OrderCategoryViewModel()
    @State private var selectedTab: MenuTab = .all
    @Binding var isTabBarHidden: Bool
    
    @State private var menuViewModel = MenuViewModel()
    @State private var selectedLikedMenuID: UUID?
    private var likedMenuIndices: [Int] {
        menuViewModel.menus.indices.filter {
            menuViewModel.menus[$0].isLiked
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 0) {
                TopNavigationView(isChildView: false)
                
                TitleHeaderView(title: "Order")
                
                MenuTabBar(selectedTab: $selectedTab)
                
                switch selectedTab {
                case .all:
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
                        NavigationLink {
                            MenuListView(
                                categoryName: category.categoryName,
                                isTabBarHidden: $isTabBarHidden,
                                viewModel: $menuViewModel
                            )
                            .toolbar(.hidden, for: .navigationBar)
                        } label: {
                            CategoryListRowView(
                                image: category.thumbnailImageName,
                                name: category.categoryName
                            )
                        }
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
                    .navigationLinkIndicatorVisibility(.hidden)
                    .listStyle(.plain)
                    
                case .mine:
                    if (likedMenuIndices.isEmpty) {
                        Text("등록된 나만의 메뉴가 없어요.\n즐겨 찾는 음료나 푸드를 나만의 메뉴로 등록하고\n빠르게 주문해 보세요.")
                            .font(.pretendard(.regular, size: 14))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.gray300)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 16)
                            .padding(.top, 43)
                        Spacer()
                    } else {
                        List(likedMenuIndices, id: \.self) { index in
                            let menu = menuViewModel.menus[index]
                            
                            Button {
                                selectedLikedMenuID = menu.id
                            } label: {
                                MenuListRowView(
                                    image: menu.imageName,
                                    korName: menu.korName,
                                    engName: menu.engName,
                                    price: menu.price,
                                    isHeartVisible: true
                                )
                            }
                            .buttonStyle(.plain)
                            .listRowInsets(
                                EdgeInsets(
                                    top: 0,
                                    leading: 18,
                                    bottom: 0,
                                    trailing: 0
                                )
                            )
                            .listRowSeparator(.hidden)
                        }
                        .navigationLinkIndicatorVisibility(.hidden)
                        .listStyle(.plain)
                    }
                }
            }
            .navigationDestination(item: $selectedLikedMenuID) { menuID in
                if let index = menuViewModel.menus.firstIndex(where: { $0.id == menuID }) {
                    let menu = menuViewModel.menus[index]

                    MenuDetailView(
                        menuImage: menu.imageName,
                        korName: menu.korName,
                        engName: menu.engName,
                        price: menu.price,
                        description: menu.description,
                        isLiked: $menuViewModel.menus[index].isLiked,
                        isTabBarHidden: $isTabBarHidden
                    )
                    .toolbar(.hidden, for: .navigationBar)
                }
            }
        }
    }
}
