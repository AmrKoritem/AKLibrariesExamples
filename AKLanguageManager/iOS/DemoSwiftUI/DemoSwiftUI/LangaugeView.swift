//
//  LangaugeView.swift
//  DemoSwiftUI
//
//  Created by Amr Koritem on 08/10/2022.
//

import SwiftUI
import AKLanguageManager

struct LangaugeView: View {
    @EnvironmentObject
    var localizer: ObservedLocalizer

    var body: some View {
        VStack {
            Text("Select a language".localized)
                .fontWeight(.bold)
                .padding()
            HStack {
                Button("العربية") {
                    withAnimation {
                        // You don't even need the environment object to change the language.
                        AKLanguageManager.shared.setLanguage(language: .ar)
                    }
                }
                .padding()
                Spacer()
                Button("English") {
                    withAnimation {
                        localizer.selectedLanguage = .en
                    }
                }
                .padding()
            }
        }
    }
}

// MARK: - Previews
struct LangaugeView_Previews: PreviewProvider {
    static var previews: some View {
        LangaugeView()
    }
}

