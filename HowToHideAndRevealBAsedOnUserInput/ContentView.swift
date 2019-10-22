//
//  ContentView.swift
//  HowToHideAndRevealBAsedOnUserInput
//
//  Created by ramil on 22.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isFav = false
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $isFav) {
                    Text("Show favorite only")
                    .padding()
                }
                List {
                    HStack {
                        Text("Dogs")
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    if isFav {
                        HStack {
                            Text("Cats")
                            Spacer()
                            Image(systemName: "star.fill")
                                .foregroundColor(.black)
                        }
                    }
                    HStack {
                        Text("Monkeys")
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    if isFav {
                        HStack {
                            Text("Rats")
                            Spacer()
                            Image(systemName: "star.fill")
                                .foregroundColor(.black)
                        }
                    }
                }.animation(Animation.default)
            }
        }.font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
