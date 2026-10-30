//
//  HeroSectionView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct HeroSectionView: View {
    let menuImage: String
    let topInset: CGFloat
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(menuImage)
                .resizable()
                .scaledToFill()
                .frame(height: 370)
                .clipped()
            
            HStack {
                Button {
                    dismiss()
                } label: {
                    ZStack(alignment: .center) {
                        Circle()
                            .frame(width: 37, height: 37)
                            .foregroundStyle(.black)
                            .opacity(0.2)
                        Image(.chevronLeftWhite)
                            .resizable()
                            .frame(width: 21, height: 21)
                    }
                }
                Spacer()
                ZStack(alignment: .center) {
                    Circle()
                        .frame(width: 35, height: 35)
                        .foregroundStyle(.black)
                        .opacity(0.2)
                    Image(.shareWhite)
                        .resizable()
                        .frame(width: 16, height: 17)
                }
            }
            .padding(.horizontal, 21)
            .padding(.top, topInset + 12)
        }
    }
}
