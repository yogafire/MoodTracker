class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.date :day
      t.integer :happiness
      t.text :description

      t.timestamps null: false
    end
  end
end
