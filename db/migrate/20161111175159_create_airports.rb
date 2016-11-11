class CreateAirports < ActiveRecord::Migration[5.0]
  def change
    create_table :airports do |t|
      t.string :code, index: true
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
