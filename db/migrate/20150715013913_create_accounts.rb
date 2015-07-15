class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title, null: false
      t.string :website
      t.string :username, null: false
      t.string :password, null: false
      t.text :note

      t.timestamps null: false
    end
  end
end
