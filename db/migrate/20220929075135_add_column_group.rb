class AddColumnGroup < ActiveRecord::Migration[6.1]
  def change
    add_column(:contacts, :group, :string)
    remove_column(:contacts, :photo)
  end
end
