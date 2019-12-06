//
//  SwipeableCardViewDelegate.swift
//  Swipeable-View-Stack
//
//  Created by Andrew Tran on 11/26/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import Foundation

protocol SwipeableCardViewDelegate: class {

    func didSelect(card: SwipeableCardViewCard, atIndex index: Int)

}
