class Episodemodlechange < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :podcast_id, :integer
  end
end
