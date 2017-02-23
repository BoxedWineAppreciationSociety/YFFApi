class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists, id: :uuid do |t|
      t.string :name
      t.text :summary
      t.string :image_name
      t.string :website
      t.string :youtube
      t.string :itunes
      t.string :soundcloud
      t.string :facebook
      t.string :twitter
      t.string :instagram

      t.timestamps
    end
  end
end
