//
//  InputFieldView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/15/26.
//

import SwiftUI

struct InputFieldView: View {
    enum FieldType {
        case email
        case password
    }
    
    let type: FieldType
    let placeHolder: String
    
    @Binding var text: String
    
    var body: some View {
        HStack(spacing: 4) {
            inputField
            
            if (!text.isEmpty) {
                clearButton
            }
        }
        .padding(.horizontal, 15)
        .frame(height: 47)
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
    }
    
    @ViewBuilder
    private var inputField: some View {
        switch type {
        case .email:
            TextField(
                "email",
                text: $text,
                prompt: Text(placeHolder)
                    .font(.body2)
                    .foregroundStyle(.gray250)
            )
                .font(.body2)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
            
        case .password:
            SecureField(
                "password",
                text: $text,
                prompt: Text(placeHolder)
                    .font(.body2)
                    .foregroundStyle(.gray250)
            )
                .font(.body2)
                .textContentType(.password)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
        }
    }
    
    private var clearButton: some View {
        Button {
            text = ""
        } label: {
            Image(.closeSquare)
        }
    }
}
