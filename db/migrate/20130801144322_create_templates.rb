class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string  :template_name, :font_size, :font_color, :background_color, :font_family
      t.text    :template_description
      t.integer :user_id
      t.integer :playlist_id
      t.timestamps
    end
  end
end
