class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :gender
      t.integer :age
      t.integer :height_feet
      t.float :height_inches
      t.float :weight
      t.string :lifestyle
      t.integer :daily_calorie_goal

      t.timestamps
    end
  end
end
