class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :event_id
      t.timestamp :entry_at
      t.string :status

      t.timestamps
    end
  end
end
