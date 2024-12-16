//
//  FormView.swift
//  Knowledge
//
//  Created by Adarsh Sudarsanan on 16/12/24.
//

import SwiftUI

struct FormView: View {
    /// The title text controller.
    @State private var title: String = ""
    
    /// The description text controller.
    @State private var description: String = ""
    
    /// The theme.
    @Environment(\.theme) private var theme: AppTheme
    
    /// Whether to open the bottom sheet or not.
    @State private var openBottomSheet: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // The title TextField.
                Text(StringKey.title) + Text("*").foregroundStyle(.red)
                TextField(StringKey.titleEg, text: $title)
                    .textFieldStyle(RootTextFieldStyle())
                    .padding(.bottom, theme.spacing.ideal)
                
                // The description TextField.
                Text(StringKey.description) + Text("*").foregroundStyle(.red)
                TextField(StringKey.descriptionEg, text: $description, axis: .vertical)
                    .lineLimit(5, reservesSpace: true)
                    .textFieldStyle(RootTextFieldStyle())
                    .padding(.bottom, theme.spacing.ideal)
                
                // Add lables.
                HStack {
                    Image(systemName: "plus").font(.system(size: 16))
                    Text("Add Label")
                }
                .foregroundStyle(theme.color.primary)
                .onTapGesture { openBottomSheet.toggle() }
                
            }
            .padding()
            .toolbar {
                // The Save button.
                Button {
                    // TODO: Add save functionality.
                } label: { Text(StringKey.save) }.tint(theme.color.primary)
            }
            .sheet(isPresented: $openBottomSheet) {
                LabelView()
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

#Preview {
    FormView()
}
