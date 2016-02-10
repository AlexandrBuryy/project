class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      add_index :users, :email, unique: true
      add_column :users, :password_digest, :string
      t.timestamps null: false
    end
  end
end
