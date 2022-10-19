//
//  SecondViewController.swift
//  DemoUIKit
//
//  Created by Amr Koritem on 19/10/2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBAction func changeButtonImageDirection(_ sender: UIButton) {
        sender.revertImagesHorizontalDirection()
    }
}
