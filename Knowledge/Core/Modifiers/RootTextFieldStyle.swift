//
//  RootTextFieldStyle.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 16/12/24.
//

import SwiftUI

struct RootTextFieldStyle: TextFieldStyle {
    @Environment(\.theme) private var theme: AppTheme
    
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .padding()
            .background(theme.color.textField)
            .clipShape(RoundedRectangle(cornerRadius: theme.cornerRadius.ideal))
            .font(.body)
    }
}

#Preview {
    RootStatelessPreview {
        TextField("Placeholder text", text: .constant(""))
            .textFieldStyle(RootTextFieldStyle())
    }
}
