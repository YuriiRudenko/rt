class RestoreMigrations < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, default: "", null: false
      t.string :encrypted_password, default: "", null: false
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer :sign_in_count, default: 0, null:false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet :current_sign_in_ip
      t.inet :last_sign_in_ip
      t.timestamps
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :image
    end

    create_table :albums do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.timestamps
    end

    create_table :photos do |t|
      t.belongs_to :album, foreign_key: true
      t.text :description, default: ""
      t.string :image
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
