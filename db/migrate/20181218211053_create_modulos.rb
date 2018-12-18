class CreateModulos < ActiveRecord::Migration[5.2]
  def change
    create_table :modulos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
