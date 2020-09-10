# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr = [{:name=>"ciervadesign", :total_post=>419, :total_follower=>419, :total_following=>862, :avg=>307}, {:name=>"deshojandohilo", :total_post=>92, :total_follower=>92, :total_following=>937, :avg=>54}, {:name=>"dilema.cl", :total_post=>205, :total_follower=>205, :total_following=>799, :avg=>122}, {:name=>"eter.clothing", :total_post=>91, :total_follower=>91, :total_following=>876, :avg=>58}, {:name=>"freckle_and_fox", :total_post=>42, :total_follower=>42, :total_following=>83, :avg=>97}, {:name=>"indomitagrafica", :total_post=>28, :total_follower=>28, :total_following=>759, :avg=>228}, {:name=>"jovivestuario", :total_post=>112, :total_follower=>112, :total_following=>306, :avg=>222}, {:name=>"la.pava", :total_post=>1669, :total_follower=>1669, :total_following=>6567, :avg=>224}, {:name=>"lanitas_coloradas", :total_post=>69, :total_follower=>69, :total_following=>649, :avg=>38}, {:name=>"lo.lisaolave", :total_post=>335, :total_follower=>335, :total_following=>2173, :avg=>104}, {:name=>"loretocorreadiseno", :total_post=>294, :total_follower=>294, :total_following=>1681, :avg=>30}, {:name=>"nal.knits", :total_post=>91, :total_follower=>91, :total_following=>1270, :avg=>47}, {:name=>"nd_denim", :total_post=>284, :total_follower=>284, :total_following=>936, :avg=>64}, {:name=>"palosanto_", :total_post=>597, :total_follower=>597, :total_following=>997, :avg=>597}, {:name=>"paulamar.cl", :total_post=>494, :total_follower=>494, :total_following=>1114, :avg=>75}, {:name=>"relmu_tejidos", :total_post=>370, :total_follower=>370, :total_following=>1369, :avg=>675}, {:name=>"siempre.oveja", :total_post=>1163, :total_follower=>1163, :total_following=>986, :avg=>3178}, {:name=>"trinidadestudio", :total_post=>77, :total_follower=>77, :total_following=>819, :avg=>324}, {:name=>"tune.yarns", :total_post=>17, :total_follower=>17, :total_following=>61, :avg=>124}, {:name=>"veta.serigrafia", :total_post=>1570, :total_follower=>1570, :total_following=>5236, :avg=>356}]

arr.each do |h|
    nombre = h[:name]
    s = Store.create!(
        name: "#{nombre}",
        instagram_link: "https://www.instagram.com/#{nombre}",
        user_id: 2,
        category_id: 2,
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