struct Pokemon {
    var id: Int
    var name: String
    var types: [ElementType]

    // Computa o nome da imagem automaticamente
    var imageName: String {
        String(format: "%@%03d.webp", name, id)
    }
}


import SwiftUI

struct PokemonCardView: View {
    let pokemon: Pokemon

    var body: some View {
        VStack(alignment: .leading) {
            Image(pokemon.imageName) // Exibe a imagem
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

import SwiftUI

enum PokemonType: String, CaseIterable {
    case grass, poison, fire, water, electric, bug, normal, flying, ground, rock, psychic, fighting, ghost, ice, dragon, dark, steel, fairy

    var color: Color {
        switch self {
        case .grass: return Color.green.opacity(0.7)
        case .poison: return Color.purple.opacity(0.7)
        case .fire: return Color.red.opacity(0.7)
        case .water: return Color.blue.opacity(0.7)
        case .electric: return Color.yellow.opacity(0.7)
        case .bug: return Color.green.opacity(0.5)
        case .normal: return Color.gray.opacity(0.5)
        case .flying: return Color.cyan.opacity(0.6)
        case .ground: return Color.brown.opacity(0.6)
        case .rock: return Color(.sRGB, red: 0.6, green: 0.5, blue: 0.4, opacity: 0.7)
        case .psychic: return Color.pink.opacity(0.7)
        case .fighting: return Color.orange.opacity(0.7)
        case .ghost: return Color.purple.opacity(0.8)
        case .ice: return Color.cyan.opacity(0.7)
        case .dragon: return Color.indigo.opacity(0.7)
        case .dark: return Color.black.opacity(0.7)
        case .steel: return Color.gray.opacity(0.7)
        case .fairy: return Color.pink.opacity(0.6)
        }
    }
}



struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                ForEach(pokemons, id: \.id) { pokemon in
                    PokemonCardView(pokemon: pokemon)
                }
            }
            .padding()
        }
    }
}
