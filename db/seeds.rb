# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ottawa = City.create!(name: "Ottawa", place_id: "ChIJrxNRX7IFzkwR7RXdMeFRaoo")
toronto = City.create!(name: "Toronto", place_id: "ChIJpTvG15DL1IkRd8S0KlBVNTI")
new_york = City.create!(name: "New York", place_id: "ChIJOwg_06VPwokRYv534QaPC8g")
san_fran = City.create!(name: "San Francisco", place_id: "ChIJIQBpAG2ahYAR_6128GcTUEo")
boston = City.create!(name: "Boston", place_id: "ChIJGzE9DS1l44kRoOhiASS_fHg")

Trainer.create!(name: "Amos47", phone: "905-409-1929", team: 'Valor', city_place_id: "ChIJrxNRX7IFzkwR7RXdMeFRaoo")
Trainer.create!(name: "Amos48", phone: "905-409-1928", team: 'Valor', city_place_id: "ChIJrxNRX7IFzkwR7RXdMeFRaoo")
Trainer.create!(name: "Amos49", phone: "905-409-1999", team: 'Valor', city_place_id: "ChIJrxNRX7IFzkwR7RXdMeFRaoo")

Trainer.create!(name: "Amos7", phone: "905-407-1929", team: 'Valor', city_place_id: "ChIJpTvG15DL1IkRd8S0KlBVNTI")

Trainer.create!(name: "Amos", phone: "985-409-1929", team: 'Valor', city_place_id: "ChIJOwg_06VPwokRYv534QaPC8g")
Trainer.create!(name: "Amos4", phone: "902-409-1929", team: 'Valor', city_place_id: "ChIJOwg_06VPwokRYv534QaPC8g")

Trainer.create!(name: "Amos14", phone: "905-414-1929", team: 'Valor', city_place_id: "ChIJIQBpAG2ahYAR_6128GcTUEo")


      # t.string :title, null: false
      # t.string :description
      # t.references :city, foreign_key: true, null: false
      # t.string :address, null: false
      # t.datetime :start, null: false, index: true
      # t.datetime :end, null: false
      # t.boolean :wifi, default: false
      # t.boolean :power, default: false
Event.create!(title: "Confed Park", description: "all the time", city_place_id: "ChIJrxNRX7IFzkwR7RXdMeFRaoo", address: "Elgin", start: '2016-01-01', end: '2017-01-01')
