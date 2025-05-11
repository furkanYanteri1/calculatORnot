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
            LinearGradient(colors: [.teal.opacity(0.6), .cyan.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            KeyView()
        }
    }
}

#Preview {
    ContentView()
}
