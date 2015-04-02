//
//  Ransom.swift
//  Ransom
//
//  Created by Rodrigo Carballo on 4/1/15.
//  Copyright (c) 2015 Rodrigo Carballo. All rights reserved.
//

import Foundation

class Ransom {
    
    
    func canRansom(ransomNote : String, magazine : String) -> Bool {
        
        var ransomWords : [String] = split(ransomNote) {$0 == " "}
        println(ransomWords)
        
        var wordsLeftDictionary = [String : Int]()
        
        for  word in ransomWords {
            
            
            if wordsLeftDictionary[word] == nil {
                wordsLeftDictionary.updateValue(0, forKey: word)
            }
            
            wordsLeftDictionary.updateValue(wordsLeftDictionary[word]! + 1, forKey: word)
            
        }
        
        var magazineWords : [String] = split(magazine) {$0 == " "}
        println(magazineWords)
        
        for  word in magazineWords {
            
            if wordsLeftDictionary[word] != nil {
                var words : Int = wordsLeftDictionary[word]!
                words--
                
                if (words == 0) {
                    
                    wordsLeftDictionary[word] = nil
                    
                }
                
            }
            
        }
        
        if wordsLeftDictionary.count == 0 {
            println(wordsLeftDictionary.count)
            return true
        }
            
        else {
            return false
            
        }
    }
    
}

