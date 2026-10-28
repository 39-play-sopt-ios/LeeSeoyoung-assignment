//
//  TopNavigationView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct TopNavigationView: View {
    let isChildView: Bool
    var body: some View {
        HStack {
            if (isChildView) {
                Image(.chevronLeftGrey)
                    .resizable()
                    .frame(width: 21, height: 21)
            }
            Spacer()
            Image(.searchGrey)
                .resizable()
                .frame(width: 21, height: 21)
        }
        .padding(.horizontal, 21)
        .padding(.vertical, 14)
    }
}
