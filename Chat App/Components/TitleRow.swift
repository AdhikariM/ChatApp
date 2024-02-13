//
//  SwiftUIView.swift
//  Chat App
//
//  Created by Mahesh Adhikari on 2/12/24.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8")
    var name = "Manisha"
    var body: some View {
        HStack (spacing: 20){
            AsyncImage(url: imageURL) {image in
                image.resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            VStack (alignment: .leading, content: {
                Text(name)
                    .font(.title).bold()
                    .foregroundColor(.black)
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            ).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            Image(systemName:"phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }.padding()
    }
}

#Preview {
    TitleRow()
        .background(Color("chatPeach"))
}
