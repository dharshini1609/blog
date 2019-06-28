class CreateSession < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :session_id
      t.text :user_details
      t.timestamps
    end
  end
end
