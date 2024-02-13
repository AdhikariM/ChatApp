//
//  MessageBubble.swift
//  Chat App
//
//  Created by Mahesh Adhikari on 2/12/24.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    var body: some View {
        VStack (alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("chatGray") : Color("chatPeach"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime {
                Text("\(message.timeStamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing, 25)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "123", text: "Learning SwiftUI and all I can do is follow along the tutorials. I would struggle if I were to code myself", received: true, timeStamp: Date()))
}
