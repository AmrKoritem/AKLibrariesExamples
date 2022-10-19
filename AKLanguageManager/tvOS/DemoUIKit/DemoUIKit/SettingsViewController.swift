//
//  SettingsViewController.swift
//  DemoUIKit
//
//  Created by Amr Koritem on 19/10/2022.
//

import UIKit
import AKLanguageManager

class SettingsViewController: UIViewController {
    // Change Language and set rootViewController to the initial view controller
    @IBAction func changeLanguage() {
        // Swap between anglish and arabic languages
        let newLanguage = AKLanguageManager.shared.selectedLanguage == .en ? Language.ar : Language.en
        AKLanguageManager.shared.setLanguage(
            language: newLanguage,
            viewControllerFactory: { _ in
                // The view controller that you want to show after changing the language
                let settingsVC = Storyboard.Main.instantiate(viewController: SettingsViewController.self)
                return Storyboard.Main.initialViewController ?? settingsVC
            },
            animation: { view in
                // Do custom animation
                view.alpha = 0
            }
        )
    }
}
