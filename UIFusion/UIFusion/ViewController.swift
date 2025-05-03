//
//  ViewController.swift
//  UIFusion
//
//  Created by Anil on 01/05/25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet var btnClick: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func action(_ sender: UIButton) {
        self.navigationController?.pushViewController(UIHostingController(rootView: MySwiftUIView()), animated: true)
    }

}
