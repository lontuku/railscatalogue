# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr = [{:name=>"algotrama.cl", :total_post=>668, :total_follower=>668, :total_following=>1826, :avg=>63}, {:name=>"anonima.joyas", :total_post=>571, :total_follower=>571, :total_following=>1893, :avg=>870}, {:name=>"arajwls", :total_post=>221, :total_follower=>221, :total_following=>889, :avg=>125}, {:name=>"botanica.joyas", :total_post=>55, :total_follower=>55, :total_following=>1908, :avg=>112}, {:name=>"conmiismanos.joyas", :total_post=>1935, :total_follower=>1935, :total_following=>3973, :avg=>112}, {:name=>"copperstudio", :total_post=>513, :total_follower=>513, :total_following=>597, :avg=>134}, {:name=>"delacons.joyas", :total_post=>1426, :total_follower=>1426, :total_following=>2076, :avg=>1349}, {:name=>"delatorre.joyas", :total_post=>444, :total_follower=>444, :total_following=>502, :avg=>388}, {:name=>"drusajoyas", :total_post=>687, :total_follower=>687, :total_following=>7038, :avg=>230}, {:name=>"elcalderodeplata", :total_post=>56, :total_follower=>56, :total_following=>413, :avg=>124}, {:name=>"hecate.joyas", :total_post=>603, :total_follower=>603, :total_following=>5808, :avg=>349}, {:name=>"irreverente.ca", :total_post=>643, :total_follower=>643, :total_following=>422, :avg=>264}, {:name=>"josefinapolancojoyas", :total_post=>137, :total_follower=>137, :total_following=>4704, :avg=>165}, {:name=>"joyeriasilvestre", :total_post=>265, :total_follower=>265, :total_following=>7466, :avg=>723}, {:name=>"marmol.cl", :total_post=>227, :total_follower=>227, :total_following=>688, :avg=>119}, {:name=>"massinaranjo", :total_post=>1570, :total_follower=>1570, :total_following=>1365, :avg=>71}, {:name=>"monserratmaluk", :total_post=>733, :total_follower=>733, :total_following=>1272, :avg=>304}, {:name=>"nukvah_joyacomosimbolo", :total_post=>92, :total_follower=>92, :total_following=>1184, :avg=>86}, {:name=>"parda_orfebreria", :total_post=>193, :total_follower=>193, :total_following=>3602, :avg=>166}, {:name=>"physalisjoyas", :total_post=>315, :total_follower=>315, :total_following=>2179, :avg=>467}, {:name=>"ren.orfebreria", :total_post=>113, :total_follower=>113, :total_following=>1053, :avg=>148}, {:name=>"rosamaria.joyas", :total_post=>784, :total_follower=>784, :total_following=>5136, :avg=>175}, {:name=>"shop.gorgona", :total_post=>279, :total_follower=>279, :total_following=>538, :avg=>417}, {:name=>"terralunajoyas", :total_post=>39, :total_follower=>39, :total_following=>56, :avg=>26}, {:name=>"times_temple_jewelry", :total_post=>169, :total_follower=>169, :total_following=>6012, :avg=>292}, {:name=>"vs.joyas", :total_post=>150, :total_follower=>150, :total_following=>695, :avg=>57}, {:name=>"vvictoriajoyeria", :total_post=>131, :total_follower=>131, :total_following=>1152, :avg=>89}]

arr.each do |h|
    nombre = h[:name]
    s = Store.create!(
        name: "#{nombre}",
        instagram_link: "https://www.instagram.com/#{nombre}",
        user_id: 2,
        category_id: 3,
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