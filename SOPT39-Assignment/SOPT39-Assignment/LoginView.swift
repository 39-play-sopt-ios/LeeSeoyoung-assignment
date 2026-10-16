//
//  LoginView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/15/26.
//

import SwiftUI
import RegexBuilder

struct LoginView: View {
    @State private var email = ""
    @State private var showPasswordView = false
    
    let emailRegex = Regex {
        Anchor.startOfSubject
        
        OneOrMore(.word)
        
        "@"
        
        OneOrMore(.word)
        
        "."
        
        Repeat(2...4) {
            CharacterClass(
                ("a"..."z"),
                ("A"..."Z")
            )
        }
        
        Anchor.endOfSubject
    }
    
    private var isEmailValid: Bool {
        email.wholeMatch(of: emailRegex) != nil
    }
    
    var body: some View {
        NavigationStack {
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
                    
                    
                    InputFieldView(type: .email, placeHolder: "email@address.com", isValid: isEmailValid, text: $email)
                        .padding(.horizontal, 31)
                    
                    Spacer()
                    
                    PrimaryButtonView(title: "다음", isDisabled: !isEmailValid) {
                        showPasswordView = true
                    }
                }
            }
            .navigationDestination(isPresented: $showPasswordView) {
                PasswordView(email: email)
            }
        }
    }
}

#Preview {
    LoginView()
}
