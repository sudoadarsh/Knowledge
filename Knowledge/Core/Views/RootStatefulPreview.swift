//
//  RootStatefulPreview.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 15/12/24.
//

import SwiftUI

struct RootStatefulPreview<Value: Equatable, Content: View>: View {
    /// The binding value.
    @State private var value: Value
    /// The content to be wrapped by this view.
    var content: (Binding<Value>) -> Content
    
    init(_ initial: Value, @ViewBuilder content: @escaping (Binding<Value>) -> Content) {
        _value = State(initialValue: initial)
        self.content = content
    }
    
    var body: some View {
        self.content($value)
    }
}
