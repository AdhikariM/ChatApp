//
//  TextField.swift
//  Chat App
//
//  Created by Mahesh Adhikari on 2/12/24.
//

import SwiftUI

struct MessageField: View {
    @State private var message = ""
    var body: some View {
        HStack{
            CustomTextField(placeholder: Text("Enter your message here"), text: $message)
            
            Button {
                
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("chatPeach"))
                    .cornerRadius(50)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("chatGray"))
        .cornerRadius(50)
        .padding()
    }
}


struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            // If text is empty, show the placeholder on top of the TextField
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}

#Preview {
    MessageField()
}
