//
//  RootStatelessView.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 16/12/24.
//

import SwiftUI

struct RootStatelessPreview<Content: View>: View {
   /// The content.
    var content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        content()
    }
}
