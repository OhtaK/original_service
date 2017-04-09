class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :score
      t.integer :month
      t.integer :day

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end
