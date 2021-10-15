class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :email
      t.string :password
      t.index :user_id, column_options: { null: true }

      t.timestamps
    end
  end
end