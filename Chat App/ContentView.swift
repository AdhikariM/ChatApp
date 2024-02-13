//
//  ContentView.swift
//  Chat App
//
//  Created by Mahesh Adhikari on 2/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleRow()
                
        }
        .background(Color("chatPeach"))
    }
}

#Preview {
    TitleRow()
        .background(Color("chatPeach"))
}
