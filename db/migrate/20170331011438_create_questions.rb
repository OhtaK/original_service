class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :eng
      t.string :jap
      t.string :reply

      t.timestamps null: false
    end
  end
end
