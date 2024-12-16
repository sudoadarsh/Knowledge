//
//  Views.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 16/12/24.
//

import SwiftUI

extension View {
    @ViewBuilder
    func `if`<Content: View>(condition: Bool, transform: (Self) -> Content) -> some View {
        if condition { transform(self) } else { self }
    }
}
