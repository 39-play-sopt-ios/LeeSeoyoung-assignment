//
//  MenuTabBar.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

enum MenuTab: Hashable {
    case all
    case mine
}

struct MenuTabBar: View {
    @State private var selectedTab: MenuTab = .all
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Button {
                selectedTab = .all
            } label: {
                Text("전체 메뉴")
                    .font(.subhead4)
                    .foregroundStyle(selectedTab == .all ? .starbucksGreen : .gray300)
                    .frame(width: 130, height: 46)
                    .overlay(alignment: .bottom) {
                        if selectedTab == .all {
                            Rectangle()
                                .fill(.starbucksGreen)
                                .frame(height: 4)
                        }
                    }
            }
            .buttonStyle(.plain)
            
            Button {
                selectedTab = .mine
            } label: {
                Text("나만의 메뉴")
                    .font(.subhead4)
                    .foregroundStyle(selectedTab == .mine ? .starbucksGreen : .gray300)
                    .frame(width: 130, height: 46)
                    .overlay(alignment: .bottom) {
                        if selectedTab == .mine {
                            Rectangle()
                                .fill(.starbucksGreen)
                                .frame(height: 4)
                        }
                    }
            }
            .buttonStyle(.plain)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(alignment: .bottom) {
            Rectangle().fill(.gray.opacity(0.25)).frame(height: 1)
        }
    }
}

#Preview {
    MenuTabBar()
}
