class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :eng
      t.string :jap

      t.timestamps null: false
    end
  end
end
