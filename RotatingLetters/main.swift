//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation
while 1 == 1 {
    //INPUT
    
    // loop forever until we get good input
    
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
    
    //If we got to this point, we know the input is good
    break // quit the while loop and begin PROCESS section
}

