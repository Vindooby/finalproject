class CreateChamps < ActiveRecord::Migration[5.0]
  def change
    create_table :champs do |t|
      t.string :champ
      t.string :position
      t.float :winpercent
      t.float :ban

      t.timestamps
    end
  end
end
