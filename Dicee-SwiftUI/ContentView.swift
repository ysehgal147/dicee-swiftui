//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Yogesh Sehgal on 03/05/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var left=1
    @State var right=1
    
    var body: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("diceeLogo")
                    Spacer()
                    HStack{
                        diceView(n: left)
                        Spacer()
                        diceView(n: right)
                    }
                    Spacer()
                    Button(action: {
                        self.left = Int.random(in:1...6)
                        self.right=Int.random(in: 1...6)
                    }) {
                        Text("Roll")
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                            .padding()
                    }
                    .padding(.horizontal)
                    .background(Color.red)
                    .cornerRadius(100)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct diceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
