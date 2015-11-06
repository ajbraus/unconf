class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title
      t.text :desc
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
