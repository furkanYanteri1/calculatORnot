//
//  KeyVİew.swift
//  calculatORnot
//
//  Created by Furkan Yanteri on 10.05.2025.
//

import SwiftUI

struct KeyVI_ew: View {
    let buttons: [[Keys]] = [
        [Keys.clear, Keys.negative, Keys.percent, Keys.divide],
        [Keys.seven, Keys.eight, Keys.nine, Keys.multiply],
        [Keys.four, Keys.five, Keys.six, Keys.subtract],
        [Keys.one, Keys.two, Keys.three, Keys.add],
        [Keys.zero, Keys.decimal, Keys.equal]
    ]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    KeyVI_ew()
}
