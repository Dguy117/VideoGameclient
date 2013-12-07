class CreateGames < ActiveRecord::Migration
  def up
    create_table 'games' do |t|
      t.string 'title'
      t.string 'rating'
      t.string 'system'
      t.string 'genre'
      t.string 'more_info'
      t.string 'release_date'
      # Add fields that let Rails automatically keep track
      # of when games are added or modified:
      t.timestamps
     end
  end

  def down
    drop_table 'games' #deletes the whole table and all its data!
  end
end
