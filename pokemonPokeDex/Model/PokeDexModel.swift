//
//  PokeDexModel.swift
//  pokemonPokeDex
//
//  Created by David Mclean on 3/23/23.
//

import Foundation

struct PokeDexModel : Identifiable, Decodable {
    
    var uid : UUID?
    var id : Int
    var name : [String:String]
    var type : [String]
    var base : [String:Int]
    
}
