require 'faker'

Department.destroy_all

10.times do
  # Faker Gem
  department = Department.create(name: Faker::Games::LeagueOfLegends.unique.rank)
  10.times do
      department.items.create(name: Faker::Games::LeagueOfLegends.unique.champion, body:Faker::Games::LeagueOfLegends.summoner_spell)
  end
end
