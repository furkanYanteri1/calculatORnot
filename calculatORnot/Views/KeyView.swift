//
//  KeyVİew.swift
//  calculatORnot
//
//  Created by Furkan Yanteri on 10.05.2025.
//

import SwiftUI

struct KeyView: View {
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
                RoundedRectangle(cornerRadius: 50)
                    .foregroundStyle(changeColor ? Color.black.opacity(0.1) : Color.green.opacity(0.3))
                    .scaleEffect(changeColor ? 1.1 : 1)
                    .frame(width: 350, height: 280)
                    .blur(radius: 10)
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
                                .foregroundStyle(elem.buttonInnerColor)
                                .frame(width: self.getWidth(elem: elem), height:self.getHeight(elem: elem))
                                .background(elem.buttonColor)
                                .foregroundStyle(.black).bold()
                                .cornerRadius(30)
                                .shadow(color: .white.opacity(1), radius: 2)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(
                                            LinearGradient(
                                                colors: [.green, .clear],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            ),
                                            lineWidth: 4
                                        )
                                )
                            
                            
                        }
                    }
                }.padding(.bottom, 4 )
            }
        }
    }
    
    func getWidth(elem:Keys) -> CGFloat{
        if elem == .zero {
            return 10 + (UIScreen.main.bounds.width - (5*10)) / 2
        }
        return (UIScreen.main.bounds.width - (5*10)) / 4
    }
    func getHeight(elem:Keys) -> CGFloat {
        return (UIScreen.main.bounds.width - (5*10)) / 5
    }
    func didTap(button:Keys){
        print("adf")
    }
    
    
    
}

#Preview {
    KeyView()
}
