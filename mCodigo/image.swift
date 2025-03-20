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
