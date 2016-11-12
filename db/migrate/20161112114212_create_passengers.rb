class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :name, index: true
      t.string :email

      t.timestamps
    end
  end
end
