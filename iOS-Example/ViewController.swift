//
//  ViewController.swift
//  iOS-Example
//
//  Created by Kirill Averyanov on 10/09/2017.
//  Copyright © 2017 Kirill Averyanov. All rights reserved.
//

import UIKit
import KALoader

class ViewController: UIViewController {

  @IBOutlet var testImageView: UIImageView!
  @IBOutlet var testLabelCollection: [UILabel]!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func changeAnimationButtonAction(_ sender: Any) {
    if !testImageView.isLoaderShowing() {
      testImageView.showLoader()
      for label in testLabelCollection {
        label.showLoader()
      }
    } else {
      testImageView.hideLoader()
      for label in testLabelCollection {
        label.hideLoader()
      }
    }
  }
}

