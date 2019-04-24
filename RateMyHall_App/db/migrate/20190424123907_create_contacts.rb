class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :fName
      t.text :lName
      t.string :subject

      t.timestamps
    end
  end
end
