class CreateNinos < ActiveRecord::Migration
  def self.up
    create_table (:ninos, :primary_key => 'codigo') do |t|
      t.string :codigo, :null => false
			t.string :estado_padrinazgo
      t.date :fecha_nac
      t.string :sexo
      t.string :pnombre
      t.string :snombre
      t.string :papellido
      t.string :sapellido
      t.string :habita_con

      t.timestamps
    end
  end

  def self.down
    drop_table :ninos
  end
end
