//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

    //INPUT
    
    // loop forever until we get good input
  var validInput = "" // outside the loop -- we can use it later on AFTER
prompt: while 1 == 1 {
    // Prompt the user
    print("Input word is?")
    
    // Wait for input
    // Test #1: make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil
        //prompt again
   continue  // continue with the next iteration of while Input
    }
    // Test #2: Is the input the correct length
    if givenInput.count < 1 || givenInput.count > 30 {
        
        //if we got here, input is too short
        continue // prompt again
    }
    
    //Test #3: Check to ensure there is only UPPERCASE letters and no spaces
    checking: for individualCharacter in givenInput {
        
        //DEBUG: PRint the character we are looking at
        print(individualCharacter)
        
        //Check the character
        switch individualCharacter {
        case "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z":
          continue checking //OK, go to next character in the string
        default :
          continue prompt //Stop looking, we found bad input
        }
    }
    
    //If we got to this point, we know the input is good
    validInput = givenInput
    break // quit the while loop and begin PROCESS section

}

// PROCESS
var countOfGoodLetters = 0
for letter in validInput {
    
    //check each letter to make sure it's IHOSZXN
    print(letter)
    if letter == "I"||letter == "O" || letter == "H" || letter == "S" || letter == "Z" || letter == "X" || letter == "N" {
        // good - keep checking (continue loop)
        countOfGoodLetters += 1
        continue
    }
}

//OUTPUT
// If we got here, guaranteed this is a word with only acceptable letters
if countOfGoodLetters == validInput.count {
    print("YES")
} else {
    print("NO")
}
