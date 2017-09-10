//
//  UIView+Extensions.swift
//  KALoader
//
//  Created by Kirill Averyanov on 08/09/2017.
//  Copyright © 2017 Kirill Averyanov. All rights reserved.
//

import Foundation
import ObjectiveC

private var associationKey = "view_kaloader_key"

// MARK: - ViewKALoader
internal extension UIView {
  var viewKALoader: KALoaderView? {
    get {
      return objc_getAssociatedObject(self, &associationKey) as? KALoaderView
    }
    set {
      objc_setAssociatedObject(self, &associationKey, newValue, .OBJC_ASSOCIATION_RETAIN)
    }
  }
}

// MARK: - Internal methods
internal extension UIView {
  func _showLoader() {
    guard let viewKALoader = viewKALoader else { return }

    insertSubview(viewKALoader, at: 0)
    viewKALoader.startAnimateLayer()
  }
}

// MARK: - Defaults methods
public extension UIView {
  func showLoader() {
    if viewKALoader != nil { return }
    viewKALoader = KALoaderView(frame: self.bounds)
    _showLoader()
  }

  func showLoader(with customGradientLayer: CAGradientLayer, fillMode: String = kCAFillModeForwards,
                  gradientAnimationDuration: TimeInterval = 0.7) {
    if viewKALoader != nil { return }
    viewKALoader = KALoaderView(frame: self.bounds)
    viewKALoader?.setCustom(gradientLayer: customGradientLayer, fillMode: fillMode,
                            gradientAnimationDuration: gradientAnimationDuration)
    _showLoader()
  }

  func hideLoader() {
    viewKALoader?.stopAnimateLayer()
    viewKALoader?.removeFromSuperview()
    self.viewKALoader = nil
  }

  func isLoaderShowing() -> Bool {
    return viewKALoader != nil
  }
}
