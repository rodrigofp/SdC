class CreateStatusExternos < ActiveRecord::Migration[5.2]
  def change
    create_table :status_externos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
