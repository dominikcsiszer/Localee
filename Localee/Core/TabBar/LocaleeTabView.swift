//
//  LocaleeTabView.swift
//  Localee
//
//  Created by Csiszér Dominik on 11/03/2024.
//

import SwiftUI

struct LocaleeTabView: View {
    @State private var selectedTab = 0
    @State private var showCreateThreadView = false
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            ActivityView()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
        }
        .onChange(of: selectedTab, perform: { newValue in
            showCreateThreadView = selectedTab == 2
        })
        .tint(colorScheme == .dark ? .white : .black)
    }
}

#Preview {
    LocaleeTabView()
}
