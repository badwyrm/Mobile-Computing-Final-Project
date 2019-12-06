//
//  ViewController.swift
//  Swipeable-View-Stack
//
//  Created by Andrew Tran on 11/26/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SwipeableCardViewDataSource {

    @IBOutlet private weak var swipeableCardView: SwipeableCardViewContainer!

    override func viewDidLoad() {
        super.viewDidLoad()

        swipeableCardView.dataSource = self
    }

}

// MARK: - SwipeableCardViewDataSource

extension ViewController {

    func numberOfCards() -> Int {
        return viewModels.count
    }

    func card(forItemAtIndex index: Int) -> SwipeableCardViewCard {
        let viewModel = viewModels[index]
        let cardView = SampleSwipeableCard()
        cardView.viewModel = viewModel
        return cardView
    }

    func viewForEmptyCards() -> UIView? {
        return nil
    }

}

extension ViewController {

    var viewModels: [SampleSwipeableCellViewModel] {

        let hamburger = SampleSwipeableCellViewModel(title: "McDonalds",
                                                     subtitle: "Big Mac",
                                                     color: UIColor(red:0.96, green:0.81, blue:0.46, alpha:1.0),
                                                     image: #imageLiteral(resourceName: "shutterstock_1036017343-e1572439851141"))

        let panda = SampleSwipeableCellViewModel(title: "Kowloon",
                                                  subtitle: "General Tso's Chicken",
                                                  color: UIColor(red:0.29, green:0.64, blue:0.96, alpha:1.0),
                                                  image: #imageLiteral(resourceName: "1460722691-delish-general-tso"))

        let puppy = SampleSwipeableCellViewModel(title: "Bona",
                                                  subtitle: "Pho Noodle Soup",
                                                  color: UIColor(red:0.29, green:0.63, blue:0.49, alpha:1.0),
                                                  image: #imageLiteral(resourceName: "bun-bo-huế-pho-bowl-canh-chua-chinese-cuisine-vietnam-cuisine"))

        let poop = SampleSwipeableCellViewModel(title: "Bar Luchador",
                                                  subtitle: "$2 Tacos",
                                                  color: UIColor(red:0.69, green:0.52, blue:0.38, alpha:1.0),
                                                  image: #imageLiteral(resourceName: "korean-taco-carnitas-mexican-cuisine-al-pastor-mexican-tacos"))

        let robot = SampleSwipeableCellViewModel(title: "Zenbox",
                                                  subtitle: "Tonkatsu Ramen",
                                                  color: UIColor(red:0.90, green:0.99, blue:0.97, alpha:1.0),
                                                  image: #imageLiteral(resourceName: "mie-ramen-png-free-transparent-png-download-pngkey-ramen-png-820_702"))

        let clown = SampleSwipeableCellViewModel(title: "Pazzaluna",
                                                  subtitle: "Fettuccine Alfredo",
                                                  color: UIColor(red:0.83, green:0.82, blue:0.69, alpha:1.0),
                                                  image: #imageLiteral(resourceName: "imgbin-carbonara-pasta-bolognese-sauce-fettuccine-alfredo-cream-tagliatelle-qKHqtcuJMu2h9dzVScbAKdTeB"))

        return [hamburger, panda, puppy, poop, robot, clown]
    }

}

