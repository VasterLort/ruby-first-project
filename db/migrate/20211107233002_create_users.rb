class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :mail
      t.string :name 
      t.string :surname
      t.string :nickname
      t.string :password_digest
    end
  end
end
