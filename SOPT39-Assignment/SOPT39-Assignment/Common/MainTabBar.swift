//
//  MainTabBar.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct MainTabBar: View {
    @Binding var selectedTab: MainTab
    var body: some View {
        VStack(spacing: 0) {
            if (selectedTab == .order) {
                HStack(alignment: .center, spacing: 0) {
                    Spacer()
                    Image(.buyEmpty)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 9)
                }
                .background(.customBlack)
            }
            
            HStack(alignment: .center) {
                tabButton(title: "Home", systemImage: "home", tab: .home)
                
                Spacer()
                
                tabButton(title: "Pay", systemImage: "pay", tab: .pay)
                
                Spacer()
                
                tabButton(title: "Order", systemImage: "order", tab: .order)
                
                Spacer()
                
                tabButton(title: "Gift", systemImage: "gift", tab: .gift)
                
                Spacer()
                
                tabButton(title: "Other", systemImage: "other", tab: .other)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 7)
            .background(.white)
        }
    }
    
    @ViewBuilder
    private func tabButton(title: String, systemImage: String, tab: MainTab) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(alignment: .center, spacing: 0) {
                Image(selectedTab == tab ? "\(systemImage)-green" : "\(systemImage)-grey")
                Text(title)
                    .font(.body1)
                    .foregroundStyle(.gray350)
            }
            .padding(.horizontal)
        }
    }
}
