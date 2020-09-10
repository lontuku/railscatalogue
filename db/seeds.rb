# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr = [{:name=>"cerio.cl", :total_post=>1309, :total_follower=>1309, :total_following=>998, :avg=>240}, {:name=>"therats_atelier", :total_post=>128, :total_follower=>128, :total_following=>189, :avg=>28}, {:name=>"1109concept", :total_post=>111, :total_follower=>111, :total_following=>115, :avg=>198}, {:name=>"yavalladiseno", :total_post=>2339, :total_follower=>2339, :total_following=>2228, :avg=>67}, {:name=>"la_marea_macrame", :total_post=>0, :total_follower=>0, :total_following=>3498, :avg=>714}, {:name=>"deconmiis", :total_post=>118, :total_follower=>118, :total_following=>198, :avg=>45}, {:name=>"filodendro__", :total_post=>518, :total_follower=>518, :total_following=>2287, :avg=>360}, {:name=>"amarantafloral.cl", :total_post=>101, :total_follower=>101, :total_following=>1910, :avg=>122}, {:name=>"nicle.cl", :total_post=>197, :total_follower=>197, :total_following=>1322, :avg=>60}, {:name=>"telaria", :total_post=>887, :total_follower=>887, :total_following=>3024, :avg=>61}]

arr.each do |h|
    nombre = h[:name]
    s = Store.create!(
        name: "#{nombre}",
        instagram_link: "https://www.instagram.com/#{nombre}",
        user_id: 2,
        category_id: 6,
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