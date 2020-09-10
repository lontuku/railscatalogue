# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr = [{:name=>"amorfo.ceramica", :total_post=>357, :total_follower=>357, :total_following=>3350, :avg=>269}, {:name=>"ara_porcelana", :total_post=>48, :total_follower=>48, :total_following=>547, :avg=>30}, {:name=>"biophilia.estudio", :total_post=>112, :total_follower=>112, :total_following=>4338, :avg=>751}, {:name=>"cami.ceramica", :total_post=>31, :total_follower=>31, :total_following=>2902, :avg=>78}, {:name=>"catalina.cumsille", :total_post=>203, :total_follower=>203, :total_following=>1468, :avg=>601}, {:name=>"ceramica.parr", :total_post=>137, :total_follower=>137, :total_following=>758, :avg=>99}, {:name=>"ceramicasdeltorno", :total_post=>66, :total_follower=>66, :total_following=>998, :avg=>108}, {:name=>"colorastral", :total_post=>137, :total_follower=>137, :total_following=>1380, :avg=>181}, {:name=>"diogenesceramicas", :total_post=>672, :total_follower=>672, :total_following=>1835, :avg=>787}, {:name=>"fresardpetitlaurent", :total_post=>303, :total_follower=>303, :total_following=>1631, :avg=>315}, {:name=>"lahacedora", :total_post=>690, :total_follower=>690, :total_following=>961, :avg=>818}, {:name=>"mambaceramicas", :total_post=>288, :total_follower=>288, :total_following=>7201, :avg=>505}, {:name=>"mdeandre.ceramicas", :total_post=>142, :total_follower=>142, :total_following=>1613, :avg=>66}, {:name=>"mijo.ceramica", :total_post=>680, :total_follower=>680, :total_following=>2296, :avg=>209}, {:name=>"milohachim", :total_post=>419, :total_follower=>419, :total_following=>1611, :avg=>987}, {:name=>"obranormal", :total_post=>256, :total_follower=>256, :total_following=>1088, :avg=>163}, {:name=>"pepa.espinoza", :total_post=>250, :total_follower=>250, :total_following=>1671, :avg=>945}, {:name=>"pomairegredas", :total_post=>587, :total_follower=>587, :total_following=>1091, :avg=>333}, {:name=>"quijada.ceramicas", :total_post=>435, :total_follower=>435, :total_following=>3181, :avg=>114}, {:name=>"wild.lullaby", :total_post=>35, :total_follower=>35, :total_following=>257, :avg=>64}]

arr.each do |h|
    nombre = h[:name]
    s = Store.create!(
        name: "#{nombre}",
        instagram_link: "https://www.instagram.com/#{nombre}",
        user_id: 2,
        category_id: 10,
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