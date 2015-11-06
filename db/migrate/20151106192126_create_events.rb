class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :speaker
      t.string :location
      t.string :title
      t.text :desc
      t.references :conference, index: true

      t.timestamps
    end
  end
end
