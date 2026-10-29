//
//  BottomNavigationBarView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct BottomNavigationBarView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(.favoriteFill)
            Button {
                // do something..
            } label: {
                Text("주문하기")
                    .font(.subhead3)
                    .foregroundStyle(.white)
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .background(.starbucksGreen)
                    .clipShape(.capsule)
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 14)
        .background(.white)
        .shadow(color: .black.opacity(0.1), radius: 13, x: 0, y: -2)
    }
}
