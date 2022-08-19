class AddNameToNotepad < ActiveRecord::Migration[5.2]
  def change
    add_column :notepads, :name, :string
  end
end
