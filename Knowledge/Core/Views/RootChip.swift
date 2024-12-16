//
//  RootChip.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 16/12/24.
//

import SwiftUI

struct RootChip: View {
    /// The label text.
    let label: LocalizedStringKey
    
    /// The theme.
    @Environment(\.theme) private var theme
    
    /// The scale animation value.
    @State private var scale: CGFloat = 1.0
    
    /// Whether the chip is selected or not.
    @State private var isSelected: Bool
    
    init(label: LocalizedStringKey, isSelected: Bool = false) {
        self.label = label
        _isSelected = State(initialValue: isSelected)
    }
    
    var body: some View {
        HStack {
            Text(label)
            if isSelected {
                Image(systemName: "xmark.circle.fill").font(.system(size: 16))
            }
        }
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        .overlay {
            let rectangle = RoundedRectangle(cornerRadius: theme.cornerRadius.ideal)
            if isSelected {
                rectangle.stroke(LinearGradient(
                        colors: [theme.color.primary, theme.color.secondary],
                        startPoint: .leading, endPoint: .trailing))
            } else {
                rectangle.stroke(style: .init())
            }
        }.onTapGesture {
            withAnimation(.spring(duration: 0.2)) { scale = 0.95 }
            withAnimation(.easeInOut(duration: 0.1)) { isSelected.toggle() }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.spring(duration: 0.2)) { scale = 1.0 }
            }
        }
        .scaleEffect(scale)
    }
}

#Preview {
    RootChip(label: "Science and Technology", isSelected: true)
}
