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
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
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
                .padding(.top, 40)
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
                Text("가을에 잘 어울리는 군고구마를 한 잔에 담은 음료.\n포슬한 카스텔라, 쫀득한 펄이 어우러져 다채로운 식감을 즐길 수 있는 음료.")
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
            
            Spacer()
        }
        .ignoresSafeArea(edges: .top)
    }
}
