class AddNameToNotepad < ActiveRecord::Migration[7.0]
  def change
    add_column :notepads, :name, :string
  end
end