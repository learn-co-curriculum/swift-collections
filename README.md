# Swift Collections

## Introduction

The goal of this lab is to give you practice manipulating collections using Swift. Reference the Apple documentation to look for built-in methods on the various collection classes that can help you.

## Instructions

Navigate to the AppDelegate.swift file. Declare each of these methods based on the following instructions:

1. `splitArrayIntoNegativesAndPositives:` should take an array of integers and return an array containing two arrays of integers. The first sub-array should contain all of the negative integers from the argument array, and the second sub-array should contain all of the positive integers from the argument array (including zeros).

2. `namesOfHBOShowsInDictionary:` should take a dictionary (in which the keys and values are both strings). It should return an array containing the keys (i.e. names of shows) whose value is "HBO".

3. `countsOfWordsInString:` should take one string argument. It should return a dictionary that has a key for each word in the submitted string, whose associated value is the count of how many times that word appears in the argument string. Be sure to remove punctuation (`.``,``-``;``!``?``"`) and ignore capitalization.

	For example, if given the string "I think, I thought; I think I.", the method should return `[ "i": 4, "think": 2, "thought": 1 }`.
	
4. `titleCaseOfString:` should take a string and return a copy of that string with the first letter of each word capitalized. Don't just use string methods to change the case of the entire string - your solution should loop through each word in the string and manually change the case of the first character in each word.

	For example, if given the string "Hello, how are you? I'm fine.", the method should return "Hello, How Are You? I'm Fine."






