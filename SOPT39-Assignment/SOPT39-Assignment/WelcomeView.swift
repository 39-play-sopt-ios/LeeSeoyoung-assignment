//
//  WelcomeView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/15/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color.darkGreen.ignoresSafeArea(.all)
            
            VStack(alignment: .center, spacing: 0) {
                
                Image(.starbucksLogo)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 57)
                    .padding(.top, 69)
                    .padding(.bottom, 93)
                
                Text("00님\n가입을 환영합니다!")
                    .font(.head2)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button {
                    // go main
                } label: {
                    Text("메인으로")
                        .font(.medium)
                        .foregroundStyle(.starbucksGreen)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(.white)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                        .padding(.bottom, 13)
                }
                .padding(.horizontal, 22)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
