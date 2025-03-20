//
//  PokedexView.swift
//  foundation_pokedex
//
//  Created by Diego Saragoza Da Silva on 18/03/25.
//

import SwiftUI

struct PokedexView : View {
    private let gridItems = [GridItem(.flexible()),
        GridItem(.flexible())]
    var body : some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 16){
                    ForEach(pokemons){ pokemon in
                        PokemonCard(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("POKEDEX")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}

