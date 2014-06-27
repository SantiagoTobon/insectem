class CreateEspecimen < ActiveRecord::Migration
  def change
    create_table :especimen do |t|
      t.string :extension,       
      t.string :dominio,        :null => false
      t.string :filo,           :null => false
      t.string :clase,          :null => false
      t.string :orden,          :null => false
      t.string :familia,        :null => false
      t.string :genero,         :null => false
      t.string :especie,        :null => false
      t.text :observaciones

      t.timestamps
    end
    add_index :especimen, :especie, unique: true
  end
end
