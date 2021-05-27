class RestoreDbFromScheme < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.bigint :user_id, index: true
      t.string :name

      t.timestamps
    end

    create_table :photos do |t|
      t.bigint :album_id, index: true
      t.text :description, default: ''
      t.string :image

      t.timestamps
    end

    create_table :users do |t|
      t.string :email, default: '', null: false
      t.string :encrypted_password, default: '', null: false
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet :current_sign_in_ip
      t.inet :last_sign_in_ip
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :image

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true

    add_foreign_key :albums, :users
    add_foreign_key :photos, :albums
  end
end
