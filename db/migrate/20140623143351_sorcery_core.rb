class SorceryCore < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nameuser,           :null => false
      t.string :email,            :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false

      t.timestamps
    end

    add_index :usuarios, :email, unique: true
  end
end