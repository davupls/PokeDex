//
//  ContentView.swift
//  pokemonPokeDex
//
//  Created by David Mclean on 3/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = PokeDexVIEWModel()
    
    private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading) {
                Text("Pokédex")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("TitleColor"))
                
                Text("Search for a Pokémon by name or using its National Pokédex number.")
                    .foregroundColor(.gray)
            }
            .padding(.bottom)
            ScrollView {
                LazyVGrid(columns: twoColumnGrid, spacing: 10) {
                    
                    ForEach(viewModel.pokedexlist) { pokemon in
                        VStack {
                            Image("00" + String(pokemon.id))
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 90)
                            
                            Text(pokemon.name["english"] ?? "")
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 3)
                            
                            Text("00" + String(pokemon.id))
                                .font(.footnote)
                            
                        }
                    }
                    
                    .frame(width: 160, height: 200)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                }
                
            }
        }
        .padding()
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
