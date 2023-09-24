//
//  SuperMusicians.swift
//  Musician class
//
//  Created by Ferid Ehmedli on 01.06.23.
//

import Foundation


class SuperMusicians : musicians {
    
 func sing2(){
        print("Privet Voram")
    }
    
    
    override func sing() {
        super.sing()
        print("Sahindi Bratva")
    }
    
    
}
