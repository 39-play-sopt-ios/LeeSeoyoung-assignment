//
//  TitleHeaderView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct TitleHeaderView: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.head1)
            .foregroundStyle(.black)
            .padding(.horizontal, 18)
            .padding(.vertical, 14)
    }
}
