//
//  CGRect+SwipeAdditions.swift
//  Swipeable-View-Stack
//
//  Created by Andrew Tran on 11/26/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//



//FACEBOOK POP ANIMATION DRIVER
//CARD TEMPLATE



import CoreGraphics

typealias CGLine = (start: CGPoint, end: CGPoint)

extension CGRect {

    var topLine: CGLine {
        return (SwipeDirection.topLeft.point, SwipeDirection.topRight.point)
    }
    var leftLine: CGLine {
        return (SwipeDirection.topLeft.point, SwipeDirection.bottomLeft.point)
    }
    var bottomLine: CGLine {
        return (SwipeDirection.bottomLeft.point, SwipeDirection.bottomRight.point)
    }
    var rightLine: CGLine {
        return (SwipeDirection.topRight.point, SwipeDirection.bottomRight.point)
    }

    var perimeterLines: [CGLine] {
        return [topLine, leftLine, bottomLine, rightLine]
    }

}
