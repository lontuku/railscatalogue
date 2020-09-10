# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr = [{:name=>"carmela_chile", :total_post=>439, :total_follower=>439, :total_following=>590, :avg=>97}, {:name=>"gioiacalzado", :total_post=>135, :total_follower=>135, :total_following=>1933, :avg=>61}, {:name=>"la.sebastiana", :total_post=>954, :total_follower=>954, :total_following=>3194, :avg=>256}, {:name=>"losjosefinas", :total_post=>515, :total_follower=>515, :total_following=>1518, :avg=>502}, {:name=>"lupinos.calzados", :total_post=>101, :total_follower=>101, :total_following=>669, :avg=>58}, {:name=>"rocioshoescalzado", :total_post=>81, :total_follower=>81, :total_following=>1096, :avg=>212}]

arr.each do |h|
    nombre = h[:name]
    s = Store.create!(
        name: "#{nombre}",
        instagram_link: "https://www.instagram.com/#{nombre}",
        user_id: 2,
        category_id: 4,
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