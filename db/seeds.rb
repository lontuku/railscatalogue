# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr.each do |name|
    s = Store.create!(
        name: "#{name}",
        instagram_link: "https://www.instagram.com/#{name}",
        user_id: 2,
        category_id: 2)
    s.images.attach(
        io: File.open("db/pics/#{name}0.jpg"),
        filename: "#{name}0")
    s.images.attach(
        io: File.open("db/pics/#{name}1.jpg"),
        filename: "#{name}1")    
end