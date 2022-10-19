//
//  AppDelegate.swift
//  DemoUIKit
//
//  Created by Amr Koritem on 09/10/2022.
//

import UIKit
import AKLanguageManager

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        AKLanguageManager.shared.configureWith(defaultLanguage: .en)
        return true
    }
}

