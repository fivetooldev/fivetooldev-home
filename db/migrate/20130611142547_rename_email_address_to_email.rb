class RenameEmailAddressToEmail < ActiveRecord::Migration
  def change
    rename_column :contact_messages, :email_address, :location
  end
end
