//
//  PokemonDetailView.swift
//  pokemonPokeDex
//
//  Created by David Mclean on 4/2/23.
//

import SwiftUI

struct PokemonDetailView: View {
    
    var body: some View {
        VStack{
            Text("Venusaur")
                .font(.largeTitle)
            
            Text("003")
            GeometryReader { geo in
                
                VStack(alignment: .center) {
                    Image("003")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                    .frame(width: geo.size.width - 50)
                }.frame(width: geo.size.width)
            }.frame(height: 350)
            
            VStack(alignment: .leading) {
                HStack() {
                    Text("Forms")
                    Text("Detail")
                    Text("Types")
                    Text("Stats")
                    Text("Weakness")
                }
                
                VStack(alignment: .leading){
                    Text("Mega Evolution")
                        .bold()
                        .padding(.bottom, 5)
                    Text("In order to support its flower, which has grown larger due to Mega Evolution, its back and legs have become stronger.")
                        .font(.callout)
                }.padding(.top, 20)
            }
            
            
            
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        PokemonDetailView()
    }
}
