//
//  NicknameBottomSheetView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/28/26.
//

import SwiftUI

struct NicknameBottomSheetView: View {
    @Binding var nickname: String
    @Binding var showSheet: Bool
    
    var body: some View {
        ZStack {
            Color.darkGreen.ignoresSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 19) {
                
                Text("닉네임을 입력해주세요")
                    .font(.subhead1)
                    .foregroundStyle(.white)
                    .padding(.top, 42)
                    .padding(.horizontal, 22)
                
                TextField(
                    "nickname",
                    text: $nickname,
                    prompt: Text("닉네임")
                        .font(.body2)
                        .foregroundStyle(.gray250)
                )
                    .font(.body2)
                    .textContentType(.nickname)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .padding(.horizontal, 15)
                    .frame(height: 47)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                    .padding(.horizontal, 29)
                
                Spacer()
                
                Button {
                    showSheet = false
                } label: {
                    Text("완료")
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
