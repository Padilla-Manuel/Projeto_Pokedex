//
//  PokemonCard.swift
//  Projeto_Pokedex
//
//  Created by Aluno Mack on 20/03/25.
//




//AQUI APENAS A CARD
import SwiftUI

struct PokemonCard: View {
    var pokemon: Pokemon
    /*
    func achaTipo(){
        ForEach(pokemon.types, id: \.self) { type in
            var tipo = type
        }
    }
     */
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(pokemon.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                    .padding(.leading)
                HStack{
                    VStack(spacing: 16){
                        HStack{
                            ForEach(pokemon.types, id: \.self) { type in
                                Text(type.rawValue.capitalized)
                                    .font(.caption)
                                    .padding(5)
                                    .background(type.cor)
                                    .cornerRadius(5)
                            }
                        }
                        Text(String(pokemon.id))
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white.opacity(0.25))
                            )
                            .frame(width: 100, height: 24)
                            
                        
                    }
                    VStack{
                        Image(pokemon.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 68, height: 68)
                            .padding([.bottom, . trailing], 4)
                    }
                }
            }
        }
        .background(.gray)
        //.background(types.cor)
        .cornerRadius(12)
        .shadow(color: .green, radius: 9, x: 0.0, y: 0.0 )
        .shadow(radius: 2)
    }
    
}



struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard(pokemon: Pokemon(id: 150, name: "mewtwo", types: [.psychic,.bug]))
        //PokemonCard(pokemon: Pokemon(id: 1, name:"", types: [ElementType.bug]))
    }
}
