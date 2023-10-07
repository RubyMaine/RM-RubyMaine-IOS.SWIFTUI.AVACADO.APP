//
//  ContentView.swift
//  RM.FruitsAvacadoApp
//
//  Created by RubyMaine on 14/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeScreen = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                Text("Мы доставляем\n продукты до\n вашего порога")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                Text("Бакалея дает вам свежие овощи и фрукты.\nЗакажите свежие продукты в продуктовом магазине здес.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button() {
                    changeScreen = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Приступить")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.frame(width: 200, height: 70)
                    .foregroundColor(.purple)
            }
            .navigationDestination(isPresented: $changeScreen) {
                Shop()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
