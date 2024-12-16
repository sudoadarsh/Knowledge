//
//  HomeView.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 16/12/24.
//

import SwiftUI

struct HomeView: View {
    /// The theme.
    @Environment(\.theme) private var theme: AppTheme
    
    var body: some View {
        VStack {
            Text("HomeView")
        }
        .navigationTitle(StringKey.home)
        .toolbar {
            // Navigate to the FormView.
            NavigationLink {
                FormView()
            } label: {
                HStack {
                    Image(systemName: "plus")
                        .font(.system(size: 16))
                        .foregroundStyle(theme.color.primary)
                    Text("Add")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
