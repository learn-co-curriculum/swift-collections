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
    
    func namesOfHBOShowsInDictionary(dictionary: [String:String]) -> [String] {
        var showsOnHBO = [String]()
        for key in dictionary.keys {
            if (dictionary[key] == "HBO") {
                showsOnHBO.append(key)
            }
        }
        return showsOnHBO
    }
    
    func countsOfWordsInString(var string: String) -> [String:Int] {
        var wordsAndCounts = [String:Int]()
        let punctuation = NSCharacterSet(charactersInString: ".,!?-'\"")
        string = string.componentsSeparatedByCharactersInSet(punctuation).joinWithSeparator("")
        let arrayOfWords = string.componentsSeparatedByString(" ")
        
        for word in arrayOfWords {
            if wordsAndCounts.keys.contains(word) {
                wordsAndCounts[word] = wordsAndCounts[word]! + 1
            }
            else {
                wordsAndCounts.updateValue(1, forKey: word)
            }
        }
        return wordsAndCounts
    }
}
