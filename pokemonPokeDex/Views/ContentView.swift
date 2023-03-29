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
        ScrollView {
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
                .frame(width: 220, height: 300)
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
