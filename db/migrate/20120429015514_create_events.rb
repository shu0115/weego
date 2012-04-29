class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.timestamp :start_at
      t.string :place
      t.text :comment

      t.timestamps
    end
  end
end
