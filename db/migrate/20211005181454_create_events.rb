class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :date
      t.integer :time
      t.string :desc
      t.index :activity

      t.timestamps
    end
  end
end
