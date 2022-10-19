//
//  Routing+Extension.swift
//  DemoUIKit
//
//  Created by Amr Koritem on 19/10/2022.
//

import UIKit

/// Add the exact names of all storyboards in the project as cases in this enum
enum Storyboard: String {
    case LaunchScreen
    case Main

    var instance: UIStoryboard {
        UIStoryboard(name: rawValue, bundle: Bundle.main)
    }

    var initialViewController: UIViewController? {
        instance.instantiateInitialViewController()
    }

    /// The storyboard id of this view controller in its storyboard must be exactly as the view controller class name, else it won't work.
    func instantiate<T: UIViewController>(viewController: T.Type) -> T {
        instance.instantiateViewController(withIdentifier: T.storyboardId) as? T ?? T()
    }
}

extension UIViewController {
    /// The storyboard id of this view controller in its storyboard must be exactly as the view controller class name, else it won't work.
    class var storyboardId: String {
        String(describing: self)
    }
}

