//
//  pokemonCard.swift
//  PokemonTeste
//
//  Created by Aluno Mack on 19/03/25.
//

import SwiftUI

struct pokemonCard: View {
    var body: some View {
        // LazyGrid
        // HStack
        // Collection
        // ScrollView
        // Binding
        VStack {
            Text("Nome do Pokemon")
            Circle()
                .frame(width:60)
            Text("Descrição")
        }
        .padding(.vertical, 150)
        .padding(.horizontal, 60)
        .background(.gray)
    }
}

struct pokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        pokemonCard()
    }
}
