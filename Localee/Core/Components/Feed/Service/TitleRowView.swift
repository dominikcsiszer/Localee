//
//  SuggestRowView.swift
//  Localee
//
//  Created by Csiszér Dominik on 11/03/2024.
//

import SwiftUI

struct TitleRowView: View {
    let title: String
    let services: [Service]
    
    var body: some View {
        VStack(spacing: 2) {
            HStack(spacing: 4) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    ForEach(services) { service in
                        ServiceCardView(service: service)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    TitleRowView(title: "Recommended", services: services)
}
