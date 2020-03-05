class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :biography
      t.timestamps
    end
  end
end
