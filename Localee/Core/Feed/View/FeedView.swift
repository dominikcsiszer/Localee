//
//  FeedView.swift
//  Localee
//
//  Created by Csiszér Dominik on 11/03/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(){
                VStack {
                    TitleRowView(title: "Recommended", services: services)
                    
                    TitleRowView(title: "New to Localee", services: services)
                    
                    CategoryRowView(categories: categories)
                    
                    Spacer()
                }
                .navigationTitle("Localee")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    FeedView()
}
