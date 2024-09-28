
# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
       t.string email, default: "", null: false
    t.string encrypted_password, default: "", null: false
    t.string reset_password_token
    t.datetime reset_password_sent_at
    t.datetime remember_created_at
    t.string name
    t.datetime created_at, null: false
    t.datetime updated_at, null: false
    t.text introduction
    t.integer book_id
    t.string profile_image
    t.string profile_image_id
    t.index [email], name: index_users_on_email, unique: true
    t.index [reset_password_token], name: index_users_on_reset_password_token, unique: true
  end
end
end
