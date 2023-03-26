//
//  ContentView.swift
//  pokemonPokeDex
//
//  Created by David Mclean on 3/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = PokeDexVIEWModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.pokedexlist) { pokemon in
                VStack(alignment: .leading){
                    Image("00" + String())
                    HStack{
                        Text(String(pokemon.id))
                            .font(.footnote)
                        Text(pokemon.name["english"] ?? "")
                            .font(.title2)
                            .bold()
                    }
//                    HStack {
//                        Text("Pokemon Type: \(pokemon.type[0])").font(.headline)
//                    }
//                    VStack {
//                        Text("Health : \(pokemon.base["HP"] ?? 999)").foregroundColor(.green)
//                        Text("Attack : \(pokemon.base["Attack"] ?? 999)").foregroundColor(.red)
//                        Text("Defense: \(pokemon.base["Defense"] ?? 999)").foregroundColor(.yellow)
//                    }
                    
                } .padding()
                
            } .navigationTitle("PokeDex")
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
