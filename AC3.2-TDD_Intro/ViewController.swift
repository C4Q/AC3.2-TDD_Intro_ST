//
//  ViewController.swift
//  AC3.2-TDD_Intro
//
//  Created by Louis Tur on 3/28/17.
//  Copyright © 2017 Access Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func numberVowels(_ string: String) -> Int {
    let vowels: [Character] = ["a", "A", "e", "E", "i", "I", "o", "O", "u" ,"U"]
    
    return string.characters.reduce(0) { (result, char) -> Int in
      if vowels.contains(char) {
        return result + 1
      }
      return result
    }
    
    /*return string.characters.reduce(0) {
      $0 + (vowels.contains($1) ? 1 : 0)
    }*/
  }
  
  func capitalizeWords(_ string: String) -> String {
    
    let words = string.components(separatedBy: " ")
    var capitalizedString = ""
    for word in words {
      capitalizedString += (word.capitalized + " ")
    }
    capitalizedString = capitalizedString.trimmingCharacters(in: CharacterSet(charactersIn: " "))
    
    return capitalizedString
  }
}

