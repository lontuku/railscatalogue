# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr = [{:name=>"agrupa.cl", :total_post=>559, :total_follower=>559, :total_following=>385, :avg=>57}, {:name=>"decatalogo", :total_post=>2209, :total_follower=>2209, :total_following=>3117, :avg=>382}, {:name=>"ec_nalca", :total_post=>351, :total_follower=>351, :total_following=>122, :avg=>75}, {:name=>"feria30kilates", :total_post=>203, :total_follower=>203, :total_following=>316, :avg=>132}, {:name=>"local9f", :total_post=>2229, :total_follower=>2229, :total_following=>2460, :avg=>21}, {:name=>"tiendamakers", :total_post=>723, :total_follower=>723, :total_following=>1487, :avg=>48}]

arr.each do |h|
    nombre = h[:name]
    s = Store.create!(
        name: "#{nombre}",
        instagram_link: "https://www.instagram.com/#{nombre}",
        user_id: 2,
        category_id: 8,
        instagram_like_avg: h[:avg],
        instagram_follower_total: h[:total_follower],
        instagram_post_total: h[:total_post],
        instagram_follow: h[:total_following])
    s.images.attach(
        io: File.open("db/pics/#{nombre}0.jpg"),
        filename: "#{nombre}0")
    s.images.attach(
        io: File.open("db/pics/#{nombre}1.jpg"),
        filename: "#{nombre}1")    
end