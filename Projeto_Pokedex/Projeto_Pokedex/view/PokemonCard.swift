//
//  PokemonCard.swift
//  Projeto_Pokedex
//
//  Created by Aluno Mack on 20/03/25.
//

import SwiftUI

struct PokemonCard: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text("Bulbasaur")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                    .padding(.leading)
                HStack{
                    VStack(spacing: 16){
                        Text("grass")
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white.opacity(0.25))
                            )
                            .frame(width: 100, height: 24)
                        Text("poison")
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white.opacity(0.25))
                            )
                            .frame(width: 100, height: 24)
                        Text("Id: 001")
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
                        Image("Vileplume45 Small")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 68, height: 68)
                            .padding([.bottom, . trailing], 4)
                    }
                }
                
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 9, x: 0.0, y: 0.0 )
    }
}

struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard()
    }
}
