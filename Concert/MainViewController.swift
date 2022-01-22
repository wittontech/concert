//
//  ViewController.swift
//  Concert
//
//  Created by Eutopia on 2022/1/23.
//

import UIKit
import Cello
import Flute
import Piano

class MainViewController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    setupTab()
  }
  
  func setupTab() {
    let cello = UINavigationController(rootViewController: CelloViewController())
    cello.tabBarItem = UITabBarItem.init(title: "Cello", image: nil, selectedImage: nil)
    
    let flute = UINavigationController(rootViewController: FluteViewController())
    flute.tabBarItem = UITabBarItem.init(title: "Flute", image: nil, selectedImage: nil)
    
    let piano = UINavigationController(rootViewController: PianoViewController())
    piano.tabBarItem = UITabBarItem.init(title: "Piano", image: nil, selectedImage: nil)
    
    self.viewControllers = [cello, flute, piano]
  }
}

