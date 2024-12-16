//
//  AppEnums.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 15/12/24.
//

import SwiftUI

enum DashboardModule: CaseIterable {
    case home, stats,  settings
    
    /// The asset image.
    var asset: String {
        switch self {
        case .home:
            "house.fill"
        case .stats:
            "chart.pie.fill"
        case .settings:
            "gearshape.fill"
        }
    }
    
    /// The module title.
    var title: LocalizedStringKey {
        switch self {
        case .home:
            StringKey.home
        case .stats:
            StringKey.stats
        case .settings:
            StringKey.settings
        }
    }
}
