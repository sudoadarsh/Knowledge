//
//  KnowledgeApp.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 14/12/24.
//

import SwiftUI
import SwiftData

@main
struct KnowledgeApp: App {
    /// The theme control.
    @State private var theme: Theme = Theme.shared
    
    var body: some Scene {
        WindowGroup {
            
        }
        .environment(\.theme, theme.active)
    }
}
