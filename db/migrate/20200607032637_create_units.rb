class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|

    	t.string :unit_name
    	t.boolean :unit_status, default: true, null: false

      t.timestamps
    end
  end
end
