//
//  RootTabBarView.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 15/12/24.
//

import SwiftUI

struct RootTabBarItem: Identifiable {
    let id: UUID = UUID()
    
    /// The asset name.
    let asset: String
}

struct RootTabBarView: View {
    /// The selected index.
    @Binding var selectedIndex: Int
    
    /// The items.
    let items: [RootTabBarItem]
    
    /// The theming.
    @Environment(\.theme) private var theme: AppTheme
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(items.indices, id: \.self) { index in
                
                // Whether the current item is selected or not.
                let isSelected: Bool = index == selectedIndex
                
                ZStack {
                    // The icon.
                    Image(systemName: items[index].asset)
                        .font(.system(size: 25))
                        .foregroundStyle(isSelected ? theme.color.primary : theme.color.onSurface)
                    
                    // The indicator.
                    RoundedRectangle(cornerRadius: theme.cornerRadius.large)
                        .frame(width: 15, height: 2)
                        .foregroundStyle(isSelected ? theme.color.secondary : .clear)
                        .offset(x: 0, y: 18)
                    
                }
                .padding()
                .onTapGesture { withAnimation { selectedIndex = index } }
            }
        }
        .padding(.horizontal, 10)
        .background(theme.color.surface)
        .clipShape(RoundedRectangle(cornerRadius: theme.cornerRadius.large))
    }
}

#Preview {
    RootStatefulPreview(0) { bindingValue in
        let items: [RootTabBarItem] = [
            RootTabBarItem(asset: "house.fill"), RootTabBarItem(asset: "chart.bar.fill"), RootTabBarItem(asset: "gearshape.fill")
        ]
        RootTabBarView(selectedIndex: bindingValue, items: items)
    }
}
