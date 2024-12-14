//
//  EnvironmentValue.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 14/12/24.
//

import SwiftUI

extension EnvironmentValues {
    /// Access [Theme] from the environment.
    var theme: AppTheme {
        get { self[ThemeKey.self] }
        set {
            self[ThemeKey.self] = newValue
        }
    }
}
