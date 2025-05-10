//
//  KeyVİew.swift
//  calculatORnot
//
//  Created by Furkan Yanteri on 10.05.2025.
//

import SwiftUI

struct KeyVI_ew: View {
    @State var resultValue = "0"
    @State var typedNumber = 0
    @State var currentOperation:Operation = .none
    @State private var changeColor = false
    
    let buttons: [[Keys]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
     var body: some View {
        VStack {
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(changeColor ? Color.number.opacity(0.5) : Color.pink.opacity(0.5))
                    .scaleEffect(changeColor ? 1.5 : 1)
                    .frame(width: 350, height: 280)
                    .animation(Animation.easeInOut(duration: 1.5).repeatForever(), value: changeColor)
                    .onAppear(perform:{
                        self.changeColor.toggle()
                    })
                    .overlay(Text(resultValue)
                        .bold()
                        .font(.system(size: 100))
                    )
            }.padding()
            ForEach(buttons, id: \.self){ row in
                HStack(spacing: 10){
                    ForEach(row, id: \.self){elem in
                        Button {
                            self.didTap(button: elem)
                        } label:{
                            Text(elem.rawValue)
                                .font(.system(size:30))
                                .frame(width:60, height:60)
                                .background(elem.buttonColor)
                                .foregroundStyle(.black).bold()
                                .cornerRadius(30)
                                .shadow(color: .purple.opacity(0.5), radius: 10)
                            
                        }
                    }
                }.padding(.bottom, 4 )
            }
        }
    }
    func didTap(button:Keys){
        print("adf")
    }
    
    
    
}

#Preview {
    KeyVI_ew()
}
