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
        ScrollView {
            Text("PokeDex")
                .font(.largeTitle)
                .bold()
            LazyVGrid(columns: twoColumnGrid, spacing: 10) {
                ForEach(viewModel.pokedexlist) { pokemon in
                    
                    VStack {
                        Image("00" + String(pokemon.id))
                        Text(pokemon.name["english"] ?? "")
                            .font(.title2)
                            .bold()
                            .padding(.bottom)
                        Text("00" + String(pokemon.id))
                            .font(.footnote)
                    }
//                    .padding()
                    
                }
                
                .frame(width: 180, height: 230)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
            }
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
