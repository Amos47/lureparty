# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ottawa = City.create!(name: "Ottawa")
toronto = City.create!(name: "Toronto")
new_york = City.create!(name: "New York")
san_fran = City.create!(name: "San Francisco")
boston = City.create!(name: "Boston")

Trainer.create!(name: "Amos47", phone: "905-409-1929", city: ottawa, team: 'Valor')
Trainer.create!(name: "Amos48", phone: "905-409-1928", city: ottawa, team: 'Valor')
Trainer.create!(name: "Amos49", phone: "905-409-1999", city: ottawa, team: 'Valor')

Trainer.create!(name: "Amos7", phone: "905-407-1929", city: toronto, team: 'Valor')

Trainer.create!(name: "Amos14", phone: "905-414-1929", city: san_fran, team: 'Valor')
Trainer.create!(name: "Amos", phone: "985-409-1929", city: new_york, team: 'Valor')
Trainer.create!(name: "Amos4", phone: "902-409-1929", city: new_york, team: 'Valor')



      # t.string :title, null: false
      # t.string :description
      # t.references :city, foreign_key: true, null: false
      # t.string :address, null: false
      # t.datetime :start, null: false, index: true
      # t.datetime :end, null: false
      # t.boolean :wifi, default: false
      # t.boolean :power, default: false
Event.create!(title: "Confed Park", description: "all the time", city: ottawa, address: "Elgin", start: '2016-01-01', end: '2017-01-01')
