//
//  SettingsView.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 15/12/24.
//

import SwiftUI

struct SettingsView: View {
    /// The theme.
    @Environment(\.theme) private var theme: AppTheme
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // The privacy policy.
                RootCardView(
                    title: StringKey.privacyPolicy, subtitle: StringKey.tapToOpen,
                    leading: Image(systemName: "shield.fill").font(.system(size: 22)),
                    trailing: Image(systemName: "arrow.up.right.circle.fill").font(.system(size: 22))
                )
                
                // The terms and conditions.
                RootCardView(
                    title: StringKey.termsAndConditions, subtitle: StringKey.tapToOpen,
                    leading: Image(systemName: "text.document.fill").font(.system(size: 22)),
                    trailing: Image(systemName: "arrow.up.right.circle.fill").font(.system(size: 22))
                )
            }.padding()
        }
        .navigationTitle(StringKey.settings)
    }
}

#Preview {
    SettingsView()
}
