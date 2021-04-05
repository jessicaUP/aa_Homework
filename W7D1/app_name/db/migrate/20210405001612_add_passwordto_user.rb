class AddPasswordtoUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password, :string, null: false, limit: 5
  end
end
