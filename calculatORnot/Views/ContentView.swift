//
//  ContentView.swift
//  calculatORnot
//
//  Created by Furkan Yanteri on 8.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.teal.opacity(0.5), .black.opacity(0.8)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            KeyView()
        }
    }
}

#Preview {
    ContentView()
}
