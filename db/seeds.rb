# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
require "open-uri"

puts "Destroying all Clowns"
Offer.destroy_all
User.destroy_all
user = User.create(name: "seed user", email: "sample@gmail.com", password: "1234567")
clown1 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201977/Les%20Bouffons/ana_1_tmuaqq.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201977/Les%20Bouffons/ana_3_ukxda2.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201977/Les%20Bouffons/ana_4_stj8ue.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201978/Les%20Bouffons/ana_5_twcw1l.jpg"]
clown2 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201977/Les%20Bouffons/andre_1_elgl5d.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201978/Les%20Bouffons/andre_2_gkuv1i.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201979/Les%20Bouffons/andre_3_kmrr0y.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201979/Les%20Bouffons/andre_4_rthh1k.jpg"]
clown3 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201979/Les%20Bouffons/carlos_1_ooooon.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201979/Les%20Bouffons/carlos_2_oarcdv.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201979/Les%20Bouffons/carlos_3_cj1enb.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/carlos_4_mmhaaf.jpg"]
clown4 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/catarina_1_rao7uv.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/catarina_3_jmayjd.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/catarina_4_pk60wc.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/catarina_5_shqz6e.jpg"]
clown5 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/dal_1_m0hhnx.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/dal_3_vtvasp.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/dal_4_cxjquz.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/dal_5_bwr0cn.jpg"]
clown6 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/danilo_1_eamina.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/danilo_3_qfjvud.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/danilo_4_ddnkb7.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/danilo_5_ttarq6.jpg"]
clown7 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/gabriel_1_lqwouh.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/gabriel_2_fzflqk.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201978/Les%20Bouffons/gabriel_3_fkflkn.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201978/Les%20Bouffons/gabriel_5_bkl6fy.jpg"]
clown8 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201978/Les%20Bouffons/gerardo_1_uwfylo.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201978/Les%20Bouffons/gerardo_3_xt2400.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201978/Les%20Bouffons/gerardo_5_w9du3r.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201978/Les%20Bouffons/gerardo_6_vjgwrd.jpg"]
clown9 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201979/Les%20Bouffons/havard_1_wiqizx.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201979/Les%20Bouffons/havard_3_t3peva.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201979/Les%20Bouffons/havard_4_hkvhwm.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/havard_5_qf9kfc.jpg"]
clown10 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/ines_1_cknp1f.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/ines_2_i84jqg.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/ines_4_bm0npe.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/ines_5_figrws.jpg"]
clown11 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201980/Les%20Bouffons/joe_1_eqzura.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/joe_2_kifuyw.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/joe_5_xkcjwl.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/joe_6_s1yb0e.jpg"]
clown12 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/julia_2_onojy1.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/julia_1_ygdzqg.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/julia_3_k1zkgz.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201981/Les%20Bouffons/julia_4_ehke20.jpg"]
clown13 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/loic_1_zxmrjc.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/loic_3_k3wthd.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/loic_4_khmkha.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/loic_5_x2r98m.jpg"]
clown14 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/lorenz_1_cggpnb.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/lorenz_3_qwe26i.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201982/Les%20Bouffons/lorenz_4_h5mehz.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/lorenz_5_qvjafs.jpg"]
clown15 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/manu_1_kwqwpg.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/manu_2_hnnsyq.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/manu_3_slnaxa.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/manu_4_u8zyq6.jpg"]
clown16 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/miguel_1_umovue.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201983/Les%20Bouffons/miguel_2_fzoipp.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201984/Les%20Bouffons/miguel_3_h8uqfa.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201984/Les%20Bouffons/miguel_5_zqk7xl.jpg"]
clown17 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201984/Les%20Bouffons/rory_1_ha8t0h.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201984/Les%20Bouffons/rory_6_zy82en.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201984/Les%20Bouffons/rory_5_nywzrj.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/rory_8_mzsm29.jpg"]
clown18 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/ryan_1_wvbm7f.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/ryan_2_ly4ezn.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/ryan_5_z09r6m.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/ryan_6_cblela.jpg"]
clown19 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/sam_1_drj24e.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/sam_3_igepjq.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/sam_4_yxbygl.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201985/Les%20Bouffons/sam_5_umiplb.jpg"]
clown20 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201986/Les%20Bouffons/vascoco_1_virubi.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201986/Les%20Bouffons/vascoco_3_uisuj0.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201986/Les%20Bouffons/vascoco_4_hionyt.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201986/Les%20Bouffons/vascoco_6_sgjmjq.jpg"]
clown21 = ["https://res.cloudinary.com/darkysplk/image/upload/v1669201986/Les%20Bouffons/zoe_1_tomoix.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201986/Les%20Bouffons/zoe_2_tkvcox.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201986/Les%20Bouffons/zoe_4_oax3t6.jpg", "https://res.cloudinary.com/darkysplk/image/upload/v1669201986/Les%20Bouffons/zoe_6_yrhfqi.jpg"]
clown_images = []
clown_images.push(clown1).push(clown2).push(clown3).push(clown4).push(clown5).push(clown6).push(clown7).push(clown8).push(clown9).push(clown10).push(clown11).push(clown12).push(clown13).push(clown14).push(clown15).push(clown16).push(clown17).push(clown18).push(clown19).push(clown20).push(clown21)
names = ["Ana", "Andre", "Carlos", "Catarina", "Dal", "Danilo", "Gabriel", "Gerardo", "Havard", "Ines", "Joe", "Julia", "Loic", "Lorenz", "Manu", "Miguel", "Rory", "Ryan", "Sam", "Vasco", "Zoe"]

puts "Creating sample Clowns"

tricks = ["juggle", "handstand", "balloons", "face-paint", "singing", "dad-jokes", "card-tricks", "magic-tricks", "instrument", "dance", "acrobatics", "annoy"]

i = 0

21.times do
  clown = Offer.new(
    name: names[i],
    features: tricks.sample + " " + tricks.sample + " " + tricks.sample,
    details: "is " + Faker::Emotion.adjective + " and speaks " + Faker::Nation.language + "." + "Favorite quote: " + Faker::ChuckNorris.fact,
    price: rand(50..150)
  )
  for image in clown_images[i]
    file = URI.open(image)
    clown.photos.attach(io: file, filename: image, content_type: "image/png")
  end


  clown.user = user
  clown.save
  puts "Clown #{clown.name} - #{clown.save}"
  i += 1
end

puts "The Clowns were created successfully"
