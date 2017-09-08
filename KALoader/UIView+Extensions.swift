//
//  UIView+Extensions.swift
//  KALoader
//
//  Created by Kirill Averyanov on 08/09/2017.
//  Copyright © 2017 Kirill Averyanov. All rights reserved.
//

import Foundation
import ObjectiveC

private var associationKey = "view_kaloader"

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

// MARK: - Defaults methods
public extension UIView {
  func showLoader() {
    if viewKALoader == nil {
      viewKALoader = KALoaderView(frame: self.frame)
    }
    guard let viewKALoader = viewKALoader else { return }

    viewKALoader.setFrameForGradientLayer(frame: self.frame)
    insertSubview(viewKALoader, at: 0)
    viewKALoader.animateLayer()
  }

  func hideLoader() {
    guard let viewKALoader = viewKALoader else { return }

  }
}
