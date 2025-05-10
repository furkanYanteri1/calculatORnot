//
//  KeyVİew.swift
//  calculatORnot
//
//  Created by Furkan Yanteri on 10.05.2025.
//

import SwiftUI

struct KeyVI_ew: View {
    let buttons: [[Keys]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    KeyVI_ew()
}
