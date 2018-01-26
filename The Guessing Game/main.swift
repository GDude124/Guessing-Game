//
//  main.swift
//  The Guessing Game
//
//  Created by Elijah Estes on 1/23/18.
//  Copyright © 2018 Elijah Estes. All rights reserved.
//

import Foundation

var guess: Int?
var tries = 0
var playAgain = "Y"
var wins = 0
var losses = 0

print("What's your name friend?")
var name = readLine()!

print("Please enter max number to guess between")

var maxNumber : UInt32
maxNumber = UInt32(readLine()!)!
var randomNumber = Int(arc4random_uniform(maxNumber))

while playAgain == "Y" || playAgain == "y" {

    print("Please guess a number between 1 and 100. You have 5 guesses, do you feel lucky puNK?")
    guess = Int(readLine()!)
    
    while guess == nil {
        print("Use a heckin number", name)
        guess = Int(readLine()!)
    }
    while guess != randomNumber && tries < 4{
        if randomNumber > guess! {
            print("OOf, higher")
        } else if randomNumber < guess! {
            print("OOf, lower")
        }
            print("Guess again")
        guess = Int(readLine()!)
    
    while guess == nil {
        print("Use a heckin number", name)
        guess = Int(readLine()!)
        }
        tries += 1
    }
    if tries >= 4 {
        print("LOSER, you suck. GIT GUD", name.uppercased(),"!")
        losses += 1
    }
    if randomNumber == guess! {
        print("YOu WoN", name, ", tryhard")
        wins += 1
    }
    if randomNumber != guess! {
        print("The correct answer is" , randomNumber)
        print("Wins ", wins, "Losses ", losses)
    }
    randomNumber = Int(arc4random_uniform(100))

    tries = 0
    
    print("Would you like to play again,", name, "? Y/N")

    playAgain = readLine()!

    guess = Int(EMPTY)
}
 print("Glad you chose to waste your time on this,", name, "!")



