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
               :release_date => '28-Sep-2004', :genre => 'Adventure', :system => 'GBA', :more_info => 'This Aladdin game is about a young street rat named Aladdin in the middle of Saudia Arabia. This game is a platformer that involves many acrobatic feats and swordplay to traverse the stages of Agrabah, Aladdins hometown. Soar to new high heights in a whole new world with your magical carpet and thwart the evil plans of the kings magister Jafar! Each sold seperately.'},
              {:title => 'Contra', :rating => 'T',
                :release_date => '20-Feb-1987', :genre => 'Action-Shooter',                     :system => 'Arcade', :more_info => 'The universe teeters on the brink of total annihilation at the hands of the vile alien warmonger, Red Falcon. Earths only hope rests with you, a courageous member of the Special Forces elite commando squad. Your mission: Battle deep into the deadly Amazon jungle, where the Red Falcon and his galactic henchmen have transformed ancient Mayan temples into awesome monuments dedicated to mass destruction. A multitude of weapons, from rapid-fire machine guns to high-tech lasers are at your disposal as you sweat blood, fighting past 3-D mazes, underground security systems, and tropical forests surrounded by giant waterfalls and alien cannons. This is the ultimate test for the ultimate guerilla warrior. And if you survive, Earth survives!'},
              {:title => 'The Legend of Zelda: A Link to the Past',
                :rating => 'E', :genre => 'Action-Adventure',                                   :release_date => '21-Nov-1991',
                :system => 'Super Nintendo', :more_info => 'Venture back to Hyrule and an age of magic and heroes. The predecessors of Link and Zelda face monsters on the march when a menacing magician takes over the kingdom. Only you can prevent his evil plot from shattering the land of Hyrule. In your quest, you will venture into twisting mazes, dungeons, palaces and shadowy forests. Test your mettle with mighty swords and magical weapons. Or heft a boulder and hurl it at your enemies. If the going gets tough, dive into a river - you can swim to escape! Learn the powerful spells, locate magical artifacts and solve the mysteries of the evil magician and the hidden realm of Hyrule.'},
              {:title => 'Mario Kart 64', :rating => 'E',
                :release_date => '10-Feb-1997',
                :genre => 'Action-Platformer',                                                  :system => 'Nintendo 64', :more_info => 'Take on up to three friends in the split-screen VS games, or race solo in the Mario GP. Tell your friends to bring it on in the highly competitive Battle mode. Advanced features allow you to race with your "Ghost". The driving data from your best run appears as a transparent character on the screen. No longer must you simply race against the clock - you can actually race against yourself!'}
              ]
# Note: the following lin temporarily allows mass assignment
#(needed if you used attr_accessible/attr_protected in games.rb)
Game.send(:attr_accessible, :title, :rating, :release_date, :genre, :system, :more_info)
more_games.each do |game|
  Game.create!(game)
  end
