//
//  main.swift
//  The Guessing Game
//
//  Created by Elijah Estes on 1/23/18.
//  Copyright © 2018 Elijah Estes. All rights reserved.
//

import Foundation

var randomNumber = Int(arc4random_uniform(100))
var guess: Int?

print("Please guess a number. You have 5 guesses.")

guess = Int(readLine()!)!

if randomNumber == guess! {
    print("YOu WoN")
}

else if randomNumber > guess! {
    print("Higher")
}

else if randomNumber < guess! {
    print("Loop")
}
