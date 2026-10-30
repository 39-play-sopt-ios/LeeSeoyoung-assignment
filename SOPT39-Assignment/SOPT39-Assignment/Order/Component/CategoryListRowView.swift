//
//  CategoryListRowView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct CategoryListRowView: View {
    let image: String
    let name: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 21) {
            Image(image)
                .resizable()
                .frame(width: 70, height: 70)
            Text(name)
                .font(.subhead3)
        }
    }
}
