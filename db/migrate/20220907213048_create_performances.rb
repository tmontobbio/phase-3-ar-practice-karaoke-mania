class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
    t.integer :song_id
    t.integer :karaoke_singer_id
    end
  end
end
