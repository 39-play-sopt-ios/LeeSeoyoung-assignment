//
//  MainTabView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

enum MainTab: Hashable {
    case home
    case pay
    case order
    case gift
    case other
}

struct MainTabView: View {
    @State private var selectedTab: MainTab = .order
    @State private var isTabBarHidden = false

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(MainTab.home)
                    .toolbar(.hidden, for: .tabBar)

                PayView()
                    .tag(MainTab.pay)
                    .toolbar(.hidden, for: .tabBar)

                OrderView(isTabBarHidden: $isTabBarHidden)
                    .tag(MainTab.order)
                    .toolbar(.hidden, for: .tabBar)
                
                GiftView()
                    .tag(MainTab.gift)
                    .toolbar(.hidden, for: .tabBar)
                
                OtherView()
                    .tag(MainTab.other)
                    .toolbar(.hidden, for: .tabBar)
            }

            if (!isTabBarHidden) {
                MainTabBar(selectedTab: $selectedTab)
            }
        }
    }
}

#Preview {
    MainTabView()
}
