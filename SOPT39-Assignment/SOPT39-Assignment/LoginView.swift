//
//  LoginView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/15/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    
    var body: some View {
        ZStack {
            Color.backgroundWhite.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 0) {
                
                Text("로그인/가입하려는\n이메일을 입력해주세요")
                    .font(.head2)
                    .foregroundStyle(.black)
                    .padding(.bottom, 13)
                    .padding(.top, 109)
                    .padding(.horizontal, 30)
                
                Text("결제 등 중요 알림, 로그인, 비밀번호 찾기에 필요해요.")
                    .font(.body1)
                    .foregroundStyle(.gray250)
                    .padding(.bottom, 5)
                    .padding(.horizontal, 30)
                
                Text("사용 중인 이메일을 입력해주세요")
                    .font(.body1)
                    .foregroundStyle(.gray250)
                    .padding(.bottom, 27)
                    .padding(.horizontal, 30)
                
                
                InputFieldView(type: .email, placeHolder: "email@address.com", text: $email)
                    .padding(.horizontal, 31)
                
                Spacer()
                
                Button {
                    // login
                } label: {
                    Text("다음")
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
    LoginView()
}
