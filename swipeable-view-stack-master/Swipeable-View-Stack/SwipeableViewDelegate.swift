//
//  SwipeableViewDelegate.swift
//  Swipeable-View-Stack
//
//  Created by Andrew Tran on 11/26/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import Foundation

protocol SwipeableViewDelegate: class {

    func didTap(view: SwipeableView)

    func didBeginSwipe(onView view: SwipeableView)

    func didEndSwipe(onView view: SwipeableView)

}
