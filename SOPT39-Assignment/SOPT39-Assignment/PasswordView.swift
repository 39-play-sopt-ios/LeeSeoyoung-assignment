//
//  PasswordView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/15/26.
//

import SwiftUI
import RegexBuilder

struct PasswordView: View {
    let email: String
    
    @State private var password = ""
    @State private var nickname = ""
    @State private var showSheet = false
    @State private var showWelcomeView = false
    
    let passwordRegex = Regex {
        Anchor.startOfSubject
        
        Lookahead {
            ZeroOrMore(.any)
            CharacterClass(
                ("a"..."z"),
                ("A"..."Z")
            )
        }
        
        Lookahead {
            ZeroOrMore(.any)
            CharacterClass.digit
        }
        
        Lookahead {
            ZeroOrMore(.any)
            CharacterClass.anyOf(
                "!@#$%^&*()_+-=[]{}|;:,.<>?"
            )
        }
        
        Repeat(10...) {
            CharacterClass(
                ("a"..."z"),
                ("A"..."Z"),
                .digit,
                .anyOf("!@#$%^&*()_+-=[]{}|;:,.<>?/")
            )
        }
        
        Anchor.endOfSubject
    }
    
    private var isPasswordValid: Bool {
        password.wholeMatch(of: passwordRegex) != nil
    }
    
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
                
                Text("\(email)로 가입중")
                    .font(.body1)
                    .foregroundStyle(.gray250)
                    .tint(.gray250)
                    .padding(.bottom, 44)
                    .padding(.horizontal, 30)
                
                InputFieldView(type: .password, placeHolder: "비밀번호 입력", text: $password)
                    .padding(.horizontal, 31)
                    .padding(.bottom, 13)
                
                HStack(alignment: .center, spacing: 5) {
                    Image(.enable)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 13, height: 13)
                    
                    Text("영문, 숫자, 특수문자 포함 10글자 이상")
                        .font(.body2)
                }
                .foregroundStyle(isPasswordValid ? .customGreen : .gray300)
                .padding(.horizontal, 35)
                .padding(.bottom, 40)
                
                Button {
                    showSheet = true
                } label: {
                    Text(nickname.isEmpty ? "닉네임 설정" : nickname)
                        .font(.body2)
                        .foregroundStyle(.gray300)
                        .underline()
                }
                .frame(maxWidth: .infinity)
                .sheet(isPresented: $showSheet) {
                    NicknameBottomSheetView(nickname: $nickname, showSheet: $showSheet)
                    .presentationDetents([.fraction(0.4), .medium])
                }
                
                Spacer()
                
                PrimaryButtonView(title: "가입하기", isDisabled: !isPasswordValid || nickname.isEmpty) {
                    showWelcomeView = true
                }
            }
        }
        .navigationDestination(isPresented: $showWelcomeView) {
            WelcomeView(nickname: nickname)
        }
    }
}
