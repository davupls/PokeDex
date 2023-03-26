//
//  PokemonViewModel.swift
//  pokemonPokeDex
//
//  Created by David Mclean on 3/23/23.
//

import Foundation

class PokeDexVIEWModel : ObservableObject{
    
    @Published var pokedexlist = [PokeDexModel]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        if let path = pathString {
            let url = URL(filePath: path)
            
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                
                do {
                    let pokeDexdata = try decoder.decode([PokeDexModel].self, from: data)
                    self.pokedexlist = pokeDexdata
                }
                catch {
                    print("Log Decoder: \(error)")
                }
            }
            catch {
                print(error)
            }
        }
    }
}
