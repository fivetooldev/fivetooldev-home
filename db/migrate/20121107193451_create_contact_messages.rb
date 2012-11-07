class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string :name
      t.string :email_address
      t.text :message

      t.timestamps
    end
  end
end
