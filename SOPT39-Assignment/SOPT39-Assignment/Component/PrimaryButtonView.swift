//
//  PrimaryButtonView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/15/26.
//

import SwiftUI

struct PrimaryButtonView: View {
    let title: String
    let isDisabled: Bool
    let action: () -> Void
    
    var body: some View {
        Button (action: action) {
            Text(title)
                .font(.medium)
                .foregroundStyle(isDisabled ? .gray300 : .white)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(isDisabled ? .gray200 : .starbucksGreen)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
                .padding(.bottom, 13)
        }
        .padding(.horizontal, 22)
        .disabled(isDisabled)
    }
}
