class ChangePhoneNumberToStringType < ActiveRecord::Migration[6.1]
  def change
    change_column :contacts, :phone_number, :string 
  end
end
