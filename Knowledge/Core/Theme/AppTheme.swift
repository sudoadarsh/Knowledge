//
//  AppTheme.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 14/12/24.
//

import SwiftUI

/// The theme to be used across the app.
protocol AppTheme {
    var color       : AppColor { get }
    var spacing     : AppSpacing { get }
    var cornerRadius: AppCornerRadius { get }
}

/// The colors to be used across the app.
protocol AppColor {
    /// The background color.
    var background : Color { get }
    
    /// The primary color.
    var primary    : Color { get }
    var onPrimary  : Color { get }
    
    /// The secondary color.
    var secondary  : Color { get }
    var onSecondary: Color { get }
    
    /// The surface color.
    var surface    : Color { get }
    var onSurface  : Color { get }
}

/// The spacing to be used across the app.
protocol AppSpacing: AppDecoration {}

/// The cornerRadii to be used across the app.
protocol AppCornerRadius: AppDecoration {}

/// The app decoration specifications.
protocol AppDecoration {
    var small : Double { get }
    var ideal : Double { get }
    var medium: Double { get }
    var large : Double { get }
}
