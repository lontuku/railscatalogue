# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr = [{:name=>"_delamafia_", :total_post=>1001, :total_follower=>1001, :total_following=>1437, :avg=>66}, {:name=>"bymalamadre", :total_post=>63, :total_follower=>63, :total_following=>745, :avg=>74}, {:name=>"chachastore", :total_post=>134, :total_follower=>134, :total_following=>50, :avg=>221}, {:name=>"cotorra_bags", :total_post=>360, :total_follower=>360, :total_following=>1574, :avg=>122}, {:name=>"coyotebags", :total_post=>1336, :total_follower=>1336, :total_following=>899, :avg=>351}, {:name=>"dsprolija", :total_post=>86, :total_follower=>86, :total_following=>712, :avg=>156}, {:name=>"esgalia", :total_post=>218, :total_follower=>218, :total_following=>546, :avg=>79}, {:name=>"leathergoods_cl", :total_post=>314, :total_follower=>314, :total_following=>744, :avg=>112}, {:name=>"peqintrus", :total_post=>137, :total_follower=>137, :total_following=>215, :avg=>587}, {:name=>"pinazerowaste", :total_post=>190, :total_follower=>190, :total_following=>3159, :avg=>88}, {:name=>"sub.bags", :total_post=>159, :total_follower=>159, :total_following=>264, :avg=>66}, {:name=>"tetrapunkk", :total_post=>786, :total_follower=>786, :total_following=>3288, :avg=>1090}, {:name=>"valiz.z", :total_post=>328, :total_follower=>328, :total_following=>119, :avg=>394}, {:name=>"viejoperroblanco", :total_post=>154, :total_follower=>154, :total_following=>336, :avg=>96}]

arr.each do |h|
    nombre = h[:name]
    s = Store.create!(
        name: "#{nombre}",
        instagram_link: "https://www.instagram.com/#{nombre}",
        user_id: 2,
        category_id: 11,
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