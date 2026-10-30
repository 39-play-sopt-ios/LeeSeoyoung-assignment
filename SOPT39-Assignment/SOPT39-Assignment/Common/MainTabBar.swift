//
//  MainTabBar.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct MainTabBar: View {
    @Binding var selectedTab: MainTab
    @State private var selectedStore = "성수역"
    var body: some View {
        VStack(spacing: 0) {
            if (selectedTab == .order) {
                HStack(alignment: .center, spacing: 0) {
                    Menu {
                        Button("성수역") { selectedStore = "성수역" }
                        Button("서울역") { selectedStore = "서울역" }
                        Button("동탄역") { selectedStore = "동탄역" }
                    } label: {
                        VStack(spacing: 2) {
                            HStack {
                                Text(selectedStore)
                                    .font(.pretendard(.medium, size: 13))
                                    .foregroundStyle(.white)
                                Spacer()
                                Image(.chevronBottomWhite)
                            }
                            Rectangle()
                                .fill(.gray300)
                                .frame(height: 1)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    Spacer()
                    Image(.buyEmpty)
                        .padding(.leading, 30)
                }
                .padding(.horizontal, 14)
                .frame(height: 60)
                .background(.customBlack)
            }
            
            HStack(alignment: .center, spacing: 0) {
                tabButton(title: "Home", systemImage: "home", tab: .home)
                
                tabButton(title: "Pay", systemImage: "pay", tab: .pay)
                
                tabButton(title: "Order", systemImage: "order", tab: .order)
                
                tabButton(title: "Gift", systemImage: "gift", tab: .gift)
                
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
                    .foregroundStyle(selectedTab == tab ? .starbucksGreen : .gray350)
                    .lineLimit(1)
                    .minimumScaleFactor(0.85)
            }
            .frame(maxWidth: .infinity)
        }
        .buttonStyle(.plain)
        .frame(maxWidth: .infinity)
    }
}
