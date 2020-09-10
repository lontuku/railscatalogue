# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# arr = ["palosanto_", "ciervadesign", "_chomba", "loretocorreadiseno", "108label", "bethchile", "camisetaskuku", "_vittorio_rosso", "indomitagrafica", "veta.serigrafia", "lo.lisaolave", "la.pava", "dilema.cl", "paulamar.cl", "trinidadestudio", "jovivestuario", "anaranja.prendas", "andreadelahorrasastre", "siempre.oveja", "relmu_tejidos", "nal.knits", "lanitas_coloradas", "tune.yarns", "eter.clothing", "artificiozerodesecho", "nd_denim", "freckle_and_fox", "deshojandohilo"]

arr = [{:name=>"danielabozza", :total_post=>1011, :total_follower=>1011, :total_following=>1233, :avg=>504}, {:name=>"franciscatuca", :total_post=>314, :total_follower=>314, :total_following=>1462, :avg=>74}, {:name=>"galgastudio", :total_post=>400, :total_follower=>400, :total_following=>4423, :avg=>197}, {:name=>"maritaproustbecker", :total_post=>166, :total_follower=>166, :total_following=>2854, :avg=>218}, {:name=>"munaysisters", :total_post=>377, :total_follower=>377, :total_following=>649, :avg=>154}, {:name=>"saviatextil", :total_post=>215, :total_follower=>215, :total_following=>2247, :avg=>115}, {:name=>"shopsisa", :total_post=>1217, :total_follower=>1217, :total_following=>1010, :avg=>200}, {:name=>"studio_zenda", :total_post=>190, :total_follower=>190, :total_following=>211, :avg=>63}, {:name=>"zurita_designstudio", :total_post=>76, :total_follower=>76, :total_following=>977, :avg=>104}]

arr.each do |h|
    nombre = h[:name]
    s = Store.create!(
        name: "#{nombre}",
        instagram_link: "https://www.instagram.com/#{nombre}",
        user_id: 2,
        category_id: 9,
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