//
//  Musicians.swift
//  Musician class
//
//  Created by Ferid Ehmedli on 01.06.23.
//

import Foundation

enum MusicianType {
    
    case Pionist
    case Guitarist
    case Violenist
    case Vocalist
    
}

class musicians {
    
    
    var name : String
    var age : Int
    var alet : String
    var type : MusicianType
    
    
    
    init(nameInit: String , ageInit: Int , aletInit: String , typeInit : MusicianType){
       
        
        name = nameInit
        age = ageInit
        alet = aletInit
        type = typeInit
        
        
    }
        
    func sing(){
        print("Salam ala bradyaqa salam")
        
    }
    
}
