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
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
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
                            .padding(.top, geometry.safeAreaInsets.top + 12)
                        }
                        
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
            .ignoresSafeArea(edges: .top)
        }
        .onAppear { isTabBarHidden = true }
        .onDisappear { isTabBarHidden = false }
    }
}
