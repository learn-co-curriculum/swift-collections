//
//  AppDelegateSpec.swift
//  swift-collections
//
//  Created by Haaris Muneer on 1/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Quick
import Nimble
@testable import swift_collections

class AppDelegateSpec: QuickSpec {
    override func spec() {
        let appDelegate = AppDelegate()
        let shows = [   "Breaking Bad"              : "AMC",
                        "House of Cards"            : "Netflix",
                        "Weeds"                     : "Showtime",
                        "The Wire"                  : "HBO",
                        "Game of Thrones"           : "HBO",
                        "Homeland"                  : "Showtime",
                        "Orange is the New Black"   : "Netflix",
                        "Mad Men"                   : "AMC",
                        "Curb Your Enthusiasm"      : "HBO",
                        "The Walking Dead"          : "AMC",
                        "The Sopranos"              : "HBO",
                        "Narcos"                    : "Netflix",
                        "Dexter"                    : "Showtime",
                        "Entourage"                 : "HBO"]
        
        let forrestGumpQuote = "Lieutenant Dan got me invested in some kind of a fruit company. So then I got a call from him, saying we don't have to worry about money no more. And I said, that's good! One less thing."
        
        let quoteWordCounts = ["lieutenant": 1,
            "dan": 1, "got": 2, "me": 1, "invested": 1, "in": 1, "some": 1, "kind": 1, "of": 1, "a": 2, "fruit": 1, "company": 1, "so": 1, "then": 1, "i": 2, "call": 1, "from": 1, "him": 1, "saying": 1, "we": 1, "don't": 1, "have": 1, "to": 1, "worry": 1, "about":1, "money": 1, "no": 1, "more": 1, "and": 1, "said": 1, "that's":1, "good": 1, "one": 1, "less": 1, "thing": 1]
        
        describe("namesOfHBOShowsInDictionary") {
            let showsOnHBO = appDelegate.namesOfHBOShowsInDictionary(shows)
            it("returns an array with the correct names of HBO shows") {
                expect(showsOnHBO).to(haveCount(5))
                expect(showsOnHBO).to(contain("The Wire", "Game of Thrones", "Curb Your Enthusiasm", "The Sopranos", "Entourage"))
            }
        }
        
        describe("countsOfWordsInString") {
            it("returns a dictionary whose keys are each word in the string input and the value is the number of occurences of that word") {
                expect(appDelegate.countsOfWordsInString(forrestGumpQuote)).to(equal(quoteWordCounts))
            }
        }
    }
}
