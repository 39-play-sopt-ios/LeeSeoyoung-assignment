//
//  MenuListView.swift
//  SOPT39-Assignment
//
//  Created by Seoyoung Lee on 10/29/26.
//

import SwiftUI

struct MenuListView: View {
    let categoryName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            TopNavigationView(isChildView: true)
            TitleHeaderView(title: categoryName)
            
            Spacer()
        }
    }
}
