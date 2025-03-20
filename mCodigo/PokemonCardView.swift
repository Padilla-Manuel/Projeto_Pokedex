//
//  PokemonCardView.swift
//  Projeto_Pokedex
//
//  Created by Aluno Mack on 20/03/25.
//

import SwiftUI

struct PokemonCardView: View {
    var pokemon: Pokemon
    var body: some View {
        VStack(alignment: .leading) {
                    Image(pokemon.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)

                    Text(pokemon.name.capitalized)
                        .font(.headline)
                        .padding(.top, 4)

                    HStack {
                        ForEach(pokemon.types, id: \.self) { type in
                            Text(type.rawValue.capitalized)
                                .font(.caption)
                                .padding(5)
                                .background(Color.blue.opacity(0.2))
                                .cornerRadius(5)
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 4)
            }
}

struct PokemonCardView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCardView(pokemon: Pokemon(id: 1, name:"", types: [ElementType.bug]))
    }
}
