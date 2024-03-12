//
//  CategoryRowView.swift
//  Localee
//
//  Created by Csiszér Dominik on 11/03/2024.
//

import SwiftUI

struct CategoryRowView: View {
    let categories: [Category]

    var body: some View {
        VStack(spacing: 2) {
            HStack(spacing: 4) {
                Text("Categories")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.horizontal)
            
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(categories) { category in
                    CategoryView(category: category)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .padding()
        }
    }

    private var columns: [GridItem] {
        [GridItem(.flexible(minimum: 150), spacing: 16), GridItem(.flexible(minimum: 150), spacing: 16)]
    }
}


#Preview {
    CategoryRowView(categories: categories)
}
