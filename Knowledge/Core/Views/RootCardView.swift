//
//  RootCardView.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 15/12/24.
//

import SwiftUI

struct RootCardView: View {
    /// The title.
    let title: LocalizedStringKey
    
    /// The subtitle.
    let subtitle: LocalizedStringKey?
    
    /// The leading icon.
    let leading: (any View)?
    
    /// The trailing icon.
    let trailing: (any View)?
    
    /// The callback for when the card is tapped.
    var tapAction: (() -> Void)?
    
    /// The theme.
    @Environment(\.theme) private var theme: AppTheme
    
    /// The scale of the card. Required for tap animation.
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        HStack {
            if let leading = leading { AnyView(leading) }
            VStack(alignment: .leading) {
                Text(title).font(.title3)
                if let subtitle = subtitle {
                    Text(subtitle).font(.subheadline).foregroundStyle(theme.color.hintText)
                }
            }.padding(.horizontal, 10)
            Spacer()
            if let trailing = trailing { AnyView(trailing) }
        }
        .padding()
        .background(theme.color.surface)
        .clipShape(RoundedRectangle(cornerRadius: theme.cornerRadius.medium))
        .scaleEffect(scale)
        .onTapGesture {
            withAnimation(.spring(duration: 0.2)) { scale = 0.95 }
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
            tapAction?() // Perform the action.
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.spring(duration: 0.2)) { scale = 1 }
            }
        }
    }
}

#Preview {
     RootCardView(
        title: "The title",
        subtitle: "The subtitle or description",
        leading: Image(systemName: "shield.fill").font(.system(size: 25)),
        trailing: Image(systemName: "arrow.up.right.circle.fill").font(.system(size: 25))
     )
}
