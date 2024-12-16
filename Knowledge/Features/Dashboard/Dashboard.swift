//
//  Dashboard.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 14/12/24.
//

import SwiftUI

struct Dashboard: View {
    /// The selected module.
    @State private var selected: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                /// The current module.
                switch DashboardModule.allCases[selected] {
                case .home:
                    HomeView()
                case .settings:
                    SettingsView()
                default:
                    Text("Coming soon...")
                }
                
                // The TabBar.
                VStack {
                    Spacer()
                    RootTabBarView(
                        selectedIndex: $selected,
                        items: DashboardModule.allCases.map({ module in
                            RootTabBarItem(asset: module.asset)
                        })
                    )
                }.ignoresSafeArea()
            }
        }
    }
}

#Preview {
    Dashboard()
}
