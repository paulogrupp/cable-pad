class CreateNotepads < ActiveRecord::Migration[5.2]
  def change
    create_table :notepads do |t|
      t.string :text

      t.timestamps
    end
  end
end
