//
//  LangaugeView.swift
//  DemoSwiftUI
//
//  Created by Amr Koritem on 08/10/2022.
//

import SwiftUI
import AKLanguageManager

struct LangaugeView: View {
    var body: some View {
        VStack {
            Text("Select a language".localized)
                .fontWeight(.bold)
                .padding()
            HStack {
                Button("العربية") {
                    withAnimation {
                        AKLanguageManager.shared.setLanguage(language: .ar)
                    }
                }
                .padding()
                Spacer()
                Button("English") {
                    withAnimation {
                        AKLanguageManager.shared.setLanguage(language: .en)
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

