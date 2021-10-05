class CreateJoinTableUsersEvents < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users_events do |t|
      t.index :users
      t.index :events
  end
end
