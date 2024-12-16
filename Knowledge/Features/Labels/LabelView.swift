//
//  LabelView.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 16/12/24.
//

import SwiftUI

struct LabelView: View {
    /// The theme.
    @Environment(\.theme) private var theme: AppTheme
    
    /// To dismiss the current modal sheet.
    @Environment(\.dismiss) private var dismiss: DismissAction
    
    /// The search text controller.
    @State private var searchText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer().frame(height: theme.spacing.ideal)
                
                // The search field.
                HStack(spacing: theme.spacing.ideal) {
                    Image(systemName: "magnifyingglass")
                    TextField(StringKey.search, text: $searchText)
                }
                .padding()
                .background(theme.color.surface)
                .clipShape(RoundedRectangle(cornerRadius: theme.cornerRadius.ideal))
                .font(.body)
                .padding(.bottom, theme.spacing.ideal)
            }
        }
        .padding()
    }
}

#Preview {
    LabelView()
}
