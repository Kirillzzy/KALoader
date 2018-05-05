//
//  UIView+Extensions.swift
//  KALoader
//
//  Created by Kirill Averyanov on 08/09/2017.
//  Copyright © 2017 Kirill Averyanov. All rights reserved.
//

import UIKit
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

    addSubview(viewKALoader)
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

  func showLoader(colors: [UIColor], animationDuration: TimeInterval = 0.7) {
    if viewKALoader != nil { return }
    viewKALoader = KALoaderView(frame: self.bounds)
    viewKALoader?.setCustom(colors: colors, gradientAnimationDuration: animationDuration)
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
