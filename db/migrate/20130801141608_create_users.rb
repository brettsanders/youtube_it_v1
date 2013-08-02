class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :yt_username, null: false
      t.timestamps
    end
  end
end
