/*
 How to use: TextFields
 
 1. Declare a state variable to hold the text entered into the TextField.
 
     @State private var username: String = ""
 
 2. Use the TextFields view in your SwiftUI body, passing the necessary parameters:
    - text: Binding to the state variable declared in step 1.
    - placeholder: Placeholder text for the TextField.
    - paddingAmount: Optional amount of padding around the TextField.
    - backgroundColor: Optional background color for the TextField.
    - cornerRadius: Optional corner radius for the TextField.
    - leadingTrailingPadding: Optional padding for leading and trailing edges of the TextField.
    - textColor: Color of the text entered into the TextField.
    - placeholderColor: Color of the placeholder text.
    - borderColor: Color of the border around the TextField.
 
     TextFields(text: $username,
                placeholder: "Enter your username",
                paddingAmount: 10,
                backgroundColor: .gray.opacity(0.1),
                cornerRadius: 8,
                leadingTrailingPadding: 20,
                textColor: .black,
                placeholderColor: .gray,
                borderColor: .blue)
 
 3. Access the text entered into the TextField using the state variable declared in step 1.
 
     Text("You entered: \(username)")
 
 */

import Foundation
import SwiftUI

struct TextFields: View {
    @Binding var text: String
    var placeholder: String
    var paddingAmount: CGFloat?
    var backgroundColor: Color?
    var cornerRadius: CGFloat?
    var leadingTrailingPadding: CGFloat?
    
    // Add color properties
    var textColor: Color
    var placeholderColor: Color
    var borderColor: Color
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding(paddingAmount)
            .background(backgroundColor ?? Color.clear)
            .cornerRadius(cornerRadius ?? 0)
            .padding([.leading, .trailing], leadingTrailingPadding)
            .foregroundColor(textColor)
            .accentColor(textColor) // For cursor and selection color
            .overlay(RoundedRectangle(cornerRadius: cornerRadius ?? 0)
                .stroke(borderColor, lineWidth: 1))
            .padding(.vertical, 8)
        
    }
}
