# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

philip = User.create(
    username: 'Naos',
    email: 'test@email.com',
    password: '1234'
)

beverly = User.create(
    username: 'Spoilie',
    email: 'test@email.com',
    password: '5678'
)

beers = Beer.create([
    {
        name: "Corona",
        description: "Best beer, but got more sales due to COVID19.",
        alcohol_level: 4.6,
        country_name: "USA",
        year_created: 1925,
        user_id: philip.id
    },

    {
        name: "Moscato",
        description: "A great wine to use when hosting dinners.",
        alcohol_level: 5,
        country_name: "Italy",
        year_created: 1870,
        user_id: beverly.id
    }
])

Style.create([
    {
        served: "Cold with lemon or lime wedge",
        appetizers: "Chicken wings with sweet glaze, or tacos",
        beer_id: beers.first.id,
        user_id: philip.id
    },

    {
        served: "Chilled with a few ice cubes",
        appetizers: "Pies, Cobblers, or Vanilla Ice-cream",
        beer_id: beers.second.id,
        user_id: beverly.id
    }
])