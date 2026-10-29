//
//  MenuListRowView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct MenuListRowView: View {
    let image: String
    let korName: String
    let engName: String
    let price: Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(image)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(.circle)
                .padding(.vertical, 14)
            
            VStack(alignment: .leading, spacing: 0) {
                Text(korName)
                    .font(.subhead3)
                    .padding(.bottom, 4)
                Text(engName)
                    .font(.body2)
                    .foregroundStyle(.gray300)
                    .padding(.bottom, 10)
                Text("\(price)원")
                    .font(.subhead3)
            }
        }
    }
}
