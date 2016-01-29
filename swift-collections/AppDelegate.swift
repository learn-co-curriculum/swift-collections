//
//  AppDelegate.swift
//  swift-collections
//
//  Created by iOS Staff on 1/27/16
//  Copyright (c) 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func splitArrayIntoNegativesAndPositives(array: [Int]) -> [[Int]] {
        var negatives = [Int]()
        var positives = [Int]()
        for integer in array {
            if integer >= 0 {
                positives.append(integer)
            }
            else {
                negatives.append(integer)
            }
        }
        return [negatives, positives]
    }
    
    func namesOfHBOShowsInDictionary(dictionary: [String:String]) -> [String] {
        
        var showsOnHBO = [String]()
        for (show, network) in dictionary {
            if (network == "HBO") {
                showsOnHBO.append(show)
            }
        }
        return showsOnHBO
    }
    
    func countsOfWordsInString(string: String) -> [String:Int] {
        var wordsAndCounts = [String:Int]()
        let punctuation = NSCharacterSet(charactersInString: ".,!?-\";")
        let stringCopy = string.componentsSeparatedByCharactersInSet(punctuation).joinWithSeparator("").lowercaseString
        let arrayOfWords = stringCopy.componentsSeparatedByString(" ")

        for word in arrayOfWords {
            if let wordCount = wordsAndCounts[word] {
                wordsAndCounts[word] = wordCount + 1
            }
            else {
                wordsAndCounts[word] = 1
            }
        }
        return wordsAndCounts
    }
    
    func titleCaseOfString(string: String) -> String {
        var titleCaseString = ""
        let arrayOfWords = string.componentsSeparatedByString(" ")
        var capitalizedArrayOfWords = [String]()
        for word in arrayOfWords {
            let firstLetter = word.substringToIndex(word.startIndex.advancedBy(1)).uppercaseString
            let titleCaseWord = firstLetter + word.substringFromIndex(word.startIndex.advancedBy(1))
            capitalizedArrayOfWords.append(titleCaseWord)
        }
        titleCaseString = capitalizedArrayOfWords.joinWithSeparator(" ")
        return titleCaseString
    }
    
    
}
