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
        
//        let sentence = 
        
        describe("namesOfHBOShowsInDictionary") {
            let showsOnHBO = appDelegate.namesOfHBOShowsInDictionary(shows)
            it("returns an array with the correct names of HBO shows") {
                expect(showsOnHBO).to(haveCount(5))
                expect(showsOnHBO).to(contain("The Wire", "Game of Thrones", "Curb Your Enthusiasm", "The Sopranos", "Entourage"))
            }
        }
        
        describe("countsOfWordsInString") {
            
        }
    }
}
