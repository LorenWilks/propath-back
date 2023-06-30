class DeviseCreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # Add your desired user attributes
      t.string :role
      t.string :name
      t.string :email
      t.string :password_digest

      # Devise columns
      t.datetime :remember_created_at
      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
