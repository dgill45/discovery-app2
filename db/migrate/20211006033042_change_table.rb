class ChangeTable < ActiveRecord::Migration[6.1]
  def change
    change_table :events do |t|
      t.remove :date, :time
      t.datetime :posting_date
      t.string :location
    end
  end
end
