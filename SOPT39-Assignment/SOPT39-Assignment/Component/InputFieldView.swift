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
    let isValid: Bool?
    
    @Binding var text: String
    @State var isPasswordVisible = false
    @FocusState private var isFocused: Bool
    
    init(
        type: FieldType,
        placeHolder: String,
        isValid: Bool? = nil,
        text: Binding<String>
    ) {
        self.type = type
        self.placeHolder = placeHolder
        self.isValid = isValid
        self._text = text
    }
    
    var body: some View {
        HStack(spacing: 4) {
            inputField
                .focused($isFocused)
            
            if (!text.isEmpty) {
                clearButton
                trailingButton
            }
        }
        .padding(.horizontal, 15)
        .frame(height: 47)
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(isFocused ? focusedBorderColor : .clear, lineWidth: 1)
        }
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
            if isPasswordVisible {
                TextField(
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
            } else {
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
    }
    
    private var clearButton: some View {
        Button {
            text = ""
        } label: {
            Image(.closeSquare)
        }
    }
    
    @ViewBuilder
    private var trailingButton: some View {
        switch type {
        case .email:
            Image(isValid == true ? .checkValid : .checkInvalid)
        case .password:
            Button {
                isPasswordVisible.toggle()
            } label: {
                Image(isPasswordVisible ? .eyeSlash : .eye)
            }
        }
    }
    
    private var focusedBorderColor: Color {
        switch type {
        case .email:
            return .black
        case .password:
            return .gray200
        }
    }
}
