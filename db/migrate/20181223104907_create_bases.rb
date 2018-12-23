class CreateBases < ActiveRecord::Migration[5.2]
  def change
    create_table :bases do |t|
      t.string :nome

      t.timestamps
    end
  end
end
