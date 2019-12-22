//
//  UIView+Constraints.swift
//  Swipeable-View-Stack
//
//  Created by Andrew Tran on 11/26/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import UIKit

extension UIView {

    internal func addEdgeConstrainedSubView(view: UIView) {
        addSubview(view)
        edgeConstrain(subView: view)
    }

    internal func edgeConstrain(subView: UIView) {
        subView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // Top
            NSLayoutConstraint(item: subView,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .top,
                               multiplier: 1.0,
                               constant: 0),
            // Bottom
            NSLayoutConstraint(item: subView,
                               attribute: .bottom,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .bottom,
                               multiplier: 1.0,
                               constant: 0),
            // Left
            NSLayoutConstraint(item: subView,
                               attribute: .left,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .left,
                               multiplier: 1.0,
                               constant: 0),
            // Right
            NSLayoutConstraint(item: subView,
                               attribute: .right,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .right,
                               multiplier: 1.0,
                               constant: 0)
            ])
    }

}
