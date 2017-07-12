class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :crypted_password
      t.string :salt

      t.timestamps null: false
    end
  end
end
