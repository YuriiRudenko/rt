class RemoveSoceryCore < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :salt, :string
    remove_column :users, :crypted_password, :string
  end
end
