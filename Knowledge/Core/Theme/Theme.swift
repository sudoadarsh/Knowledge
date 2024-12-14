//
//  Theme.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 14/12/24.
//

import SwiftUI

/// The environment key for the [Theme].
struct ThemeKey: EnvironmentKey {
    static var defaultValue: AppTheme = Theme.shared.active
}

/// The theme control class.
class Theme: ObservableObject {
    /// Singleton pattern.
    static let shared: Theme = Theme()
    
    /// The active theme.
    var active: AppTheme
    
    private init(active: AppTheme = DefaultAppTheme()) {
        self.active = active
    }
    
    /// Change the active theme.
    func change<CustomTheme: AppTheme>(_ theme: CustomTheme) {
        active = theme
    }
}
