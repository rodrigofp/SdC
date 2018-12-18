class CreateStatusInternos < ActiveRecord::Migration[5.2]
  def change
    create_table :status_internos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
