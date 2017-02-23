class CreatePerformances < ActiveRecord::Migration[5.0]
  def change
    create_table :performances, id: :uuid do |t|
      t.uuid :artist_id
      t.string :stage
      t.datetime :time

      t.timestamps
    end
  end
end
