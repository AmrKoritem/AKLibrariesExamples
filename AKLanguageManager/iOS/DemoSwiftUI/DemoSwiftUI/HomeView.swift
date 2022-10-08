//
//  HomeView.swift
//  DemoSwiftUI
//
//  Created by Amr Koritem on 03/10/2022.
//

import SwiftUI
import AKLanguageManager

struct HomeView: View {
    @State
    private var isPresented = false

    var body: some View {
        return NavigationView {
            VStack {
                Image("direction")
                    .resizable()
                    .directionLocalized()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240, height: 100)
                NavigationLink(destination: DetailsView()) {
                    Text("Show Detail View")
                }
                .navigationTitle("Home")
                HStack {
                    Text("♥️")
                        .padding()
                    Spacer()
                    Text("♠️")
                        .padding()
                }
                Button("Change the language") {
                    isPresented = true
                }
            }
        }
        .popover(isPresented: $isPresented) {
            LangaugeView()
                .localized()
        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
