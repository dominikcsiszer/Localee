//
//  ServiceCardView.swift
//  Localee
//
//  Created by Csiszér Dominik on 11/03/2024.
//

import SwiftUI
import Kingfisher

struct ServiceCardView: View {
    let service: Service

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            // Top part with image or dummy
            if let imageUrl = service.imageUrl, let url = URL(string: imageUrl) {
                KFImage(url)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 130)
            } else {
                // Dummy section with gray background and system icon
                dummyImage
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(service.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text(service.location)
                    .font(.footnote)
                    .foregroundColor(Color(.systemGray2))

                Text(service.category.name)
                    .font(.footnote)
                    .foregroundColor(.black)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(.systemGray2), lineWidth: 1)
                    )
                    .padding(.bottom, 8)
            }
            .padding(.horizontal, 8)
        }
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.systemGray2), lineWidth: 1)
        )
    }
    
    var dummyImage: some View {
        ZStack {
            Color(.systemGray)
                .frame(width: 220,height: 130)
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
        }
    }
}

struct ServiceCardView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceCardView(service: services[0])
    }
}
