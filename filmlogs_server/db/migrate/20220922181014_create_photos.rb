class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :photoURL
      t.belongs_to :slideshow, null: false, foreign_key: true

      t.timestamps
    end
  end
end
