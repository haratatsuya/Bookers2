class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
    t.string title
    t.text body
    t.integer user_id
    t.integer profile_image_id
    t.datetime created_at, null: false
    t.datetime updated_at, null: false
      t.timestamps
    end
  end
end
