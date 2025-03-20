struct Pokemon {
    var id: Int
    var name: String
    var types: [ElementType]

    // Computa o nome da imagem automaticamente
    var imageName: String {
        String(format: "%@%03d.webp", name, id)
    }
}
