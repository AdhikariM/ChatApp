//
//  ContentView.swift
//  Chat App
//
//  Created by Mahesh Adhikari on 2/11/24.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["hello", "Hey, what's up", "what have you been doing?", "nothing much, I am learning SWIFTUI. making some good progress"]
    
    var body: some View {
        VStack(spacing: 0) { // Ensure no default spacing between VStack's children
            VStack {
                TitleRow()
                    
                ScrollView {
                    ForEach(messageArray, id: \.self) { text in
                        MessageBubble(message: Message(id: "123", text: text, received: false, timeStamp: Date()))
                    }
                }
                .padding(.top, 10)
                .background(Color.white) // Set background color to white
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("chatPeach"))
            
            MessageField()
                .padding(.horizontal) // Add horizontal padding
                .background(Color.white) // Set background color to white
                .padding(.bottom) // Add some padding at the bottom
        }
    }
}

#Preview {
   ContentView()
}
