//
//  KALoader.swift
//  KALoader
//
//  Created by Kirill Averyanov on 08/09/2017.
//  Copyright © 2017 Kirill Averyanov. All rights reserved.
//

import Foundation

internal class KALoaderView: UIView {
  private var gradientLayer: CAGradientLayer!

  override init(frame: CGRect) {
    super.init(frame: frame)
    gradientLayer = CAGradientLayer()
    gradientLayer.colors = [UIColor.lightGray.cgColor, UIColor.gray.cgColor, UIColor.lightGray.cgColor]
    gradientLayer.locations = [0.0, 0.75, 1.0]
    gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
    gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
    gradientLayer.frame = frame
    layer.insertSublayer(gradientLayer, at: 0)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func setFrameForGradientLayer(frame: CGRect) {
    gradientLayer.frame = frame
  }

  func startAnimateLayer() {
    let gradientAnimation = CABasicAnimation(keyPath: "locations")
    gradientAnimation.fromValue = [0.0, 0.0, 0.25]
    gradientAnimation.toValue = [0.75, 1.0, 1.0]
    gradientAnimation.duration = 0.7
    gradientAnimation.repeatCount = .infinity
    gradientLayer.add(gradientAnimation, forKey: nil)
  }

  func stopAnimateLayer() {
    gradientLayer.removeAllAnimations()
  }
}
