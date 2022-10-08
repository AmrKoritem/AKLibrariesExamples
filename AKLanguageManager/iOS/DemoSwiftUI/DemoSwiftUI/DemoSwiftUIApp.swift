//
//  DemoSwiftUIApp.swift
//  DemoSwiftUI
//
//  Created by Amr Koritem on 03/10/2022.
//

import SwiftUI
import AKLanguageManager

@main
struct DemoSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            LocalizedView(.en) {
                HomeView()
                    .transition(.slide)
            }
        }
    }
}
