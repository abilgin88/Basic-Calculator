//
//  TextFieldView.swift
//  Basic Calculator
//
//  Created by Abdullah Bilgin on 11/26/22.
//

import SwiftUI

struct TextFieldView: View {
    @State var name: String = "Abdullah"
    @FocusState private var textFieldIsFocused: Bool

    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Enter Number", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(TextAlignment.center)
                .keyboardType(.numberPad)
                .focused($textFieldIsFocused) // check textfield is focused

        }.padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
