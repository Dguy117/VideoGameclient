class CreateGames < ActiveRecord::Migration
  def up
    create_table 'games' do |t|
      t.string 'title'
      t.string 'rating'
      t.string 'system'
      t.text 'description'
      t.datetime 'release_date'
      # Add fields that let Rails automatically keep track
      # of when games are added or modified:
      t.timestamps
     end
  end

  def down
    drop_table 'games' #deletes the whole table and all its data!
  end
end
