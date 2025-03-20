import SwiftUI

enum ElementType: String {
    case bug
    case grass
}

struct Pokemon: Identifiable {
    var id: Int
    var name: String
    var types: [ElementType]
}

let pokemons: [Pokemon] = [
    Pokemon(id: 1, name: "Bulbasaur", types: [.grass, .bug]),
    Pokemon(id: 4, name: "Charmander", types: [.bug])
]


struct PokemonCardView: View {
    var pokemon: Pokemon

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("ID: \(pokemon.id)")
                .font(.caption)
                .foregroundColor(.gray)
            Text("\(pokemon.name)")
                .font(.title2)
                .bold()
            Text("Tipos: \(pokemon.types.map { $0.rawValue }.joined(separator: ", "))")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.green.opacity(0.2))
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(pokemons) { pokemon in
                    PokemonCardView(pokemon: pokemon)
                }
            }
            .padding()
        }
    }
}

struct PokemonCardView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCardView(pokemon: Pokemon(id: 1, name: "Bulbasaur", types: [.grass, .bug]))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
