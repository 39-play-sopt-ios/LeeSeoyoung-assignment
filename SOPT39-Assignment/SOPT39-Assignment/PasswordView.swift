//
//  PasswordView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/15/26.
//

import SwiftUI

struct PasswordView: View {
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color.backgroundWhite.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 0) {
                
                Text("사용할 비밀번호를\n입력해주세요")
                    .font(.head2)
                    .foregroundStyle(.black)
                    .padding(.bottom, 13)
                    .padding(.top, 109)
                    .padding(.horizontal, 30)
                
                Text("leesangyup@sopt.com로 가입중")
                    .font(.body1)
                    .foregroundStyle(.gray250)
                    .tint(.gray250)
                    .padding(.bottom, 44)
                    .padding(.horizontal, 30)
                
                SecureField(
                    "password",
                    text: $password,
                    prompt: Text("비밀번호 입력")
                        .font(.body2)
                        .foregroundStyle(.gray250)
                )
                    .font(.body2)
                    .textContentType(.password)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .padding(.horizontal, 15)
                    .frame(height: 47)
                    .background(.white)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                    .padding(.horizontal, 31)
                    .padding(.bottom, 13)
                
                HStack(alignment: .center, spacing: 5) {
                    Image(.enableOff)
                        .resizable()
                        .frame(width: 13, height: 13)
                    Text("영문, 숫자, 특수문자 포함 10글자 이상")
                        .font(.body2)
                        .foregroundStyle(.gray300)
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 40)
                
                Button {
                    // nickname
                } label: {
                    Text("닉네임 설정")
                        .font(.body2)
                        .foregroundStyle(.gray300)
                        .underline()
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                Button {
                    // signup
                } label: {
                    Text("가입하기")
                        .font(.medium)
                        .foregroundStyle(.gray300)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(.gray200)
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
    PasswordView()
}
