//
//  MenuDetailView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct MenuDetailView: View {
    let menuImage: String
    let korName: String
    let engName: String
    let price: Int
    let description: String
    @Binding var isTabBarHidden: Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        HeroSectionView(menuImage: menuImage, topInset: geometry.safeAreaInsets.top)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            HStack(alignment: .center, spacing: 9) {
                                Text(korName)
                                    .font(.head2)
                                Text("NEW")
                                    .font(.subhead3)
                                    .foregroundStyle(.mainGreen)
                                    .padding(.vertical, 7)
                            }
                            Text(engName)
                                .font(.body2)
                                .foregroundStyle(.gray300)
                            Text(description)
                                .font(.pretendard(.regular, size: 14))
                                .padding(.vertical, 14)
                            Text("\(price)원")
                                .font(.head2)
                                .padding(.vertical, 14)
                        }
                        .padding(21)
                        
                        Text("ICED ONLY")
                            .font(.subhead3)
                            .foregroundStyle(.customBlue)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 9)
                            .overlay() {
                                Capsule()
                                    .stroke(.gray200)
                            }
                            .padding(.horizontal, 24)
                            .padding(.bottom, 14)
                        
                        Text("*컬러 드리즐은 시간이 지날수록 번지는 현상이 있으나 음료 품질과는 무관하니 안심하고 드세요.")
                            .font(.pretendard(.regular, size: 14))
                            .foregroundStyle(.gray300)
                            .padding(.horizontal, 14)
                            .padding(.vertical, 21)
                            .background(.backgroundWhite)
                            .padding(.horizontal, 21)
                    }
                }
                
                Spacer()
                
                BottomNavigationBarView()
            }
            .ignoresSafeArea(edges: .top)
        }
        .onAppear { isTabBarHidden = true }
        .onDisappear { isTabBarHidden = false }
    }
}
