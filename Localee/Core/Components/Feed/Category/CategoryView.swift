//
//  CategoryView.swift
//  Localee
//
//  Created by Csiszér Dominik on 12/03/2024.
//

import SwiftUI
import Kingfisher

struct CategoryView: View {
    let category: Category
    var body: some View {
        HStack(spacing: 8) { // Add spacing between text and image
            // Display the category name in the left-bottom corner
            Text(category.name)
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            Spacer()
            
            // Display the small image on the right side
            if let imageUrl = category.imageUrl, let url = URL(string: imageUrl) {
                KFImage(url)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40) // Use dynamic size for the image
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40) // Use dynamic size for the placeholder image
                    .foregroundColor(.gray)
            }
        }
        .padding() // Add padding to the whole content
        .background(Color(.systemGray6))
        .cornerRadius(8)
        .frame(maxWidth: .infinity) // Make the view expand horizontally
    }
}

#Preview {
    CategoryView(category: categories[0])
}
