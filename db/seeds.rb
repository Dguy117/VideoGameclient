# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Seed the VideoGameclient DB with some games.
more_games = [
              {:title => 'Aladdin', :rating => 'E',
                :release_date => '28-Sep-2004', :system => 'GBA'},
              {:title => 'Contra', :rating => 'T',
                :release_date => '20-Feb-1987', :system => 'Arcade'},
              {:title => 'The Legend of Zelda: A Link to the Past',
                :rating => 'E', :release_date => '21-Nov-1991',
                :system => 'Super Nintendo'},
              {:title => 'Mario Kart 64', :rating => 'E',
                :release_date => '10-Feb-1997',
                :system => 'Nintendo 64'}
              ]
# Note: the following lin temporarily allows mass assignment
#(needed if you used attr_accessible/attr_protected in games.rb)
Game.send(:attr_accessible, :title, :rating, :release_date, :system)
more_games.each do |game|
  Game.create!(game)
  end
