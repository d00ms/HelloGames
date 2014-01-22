class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Website_Name
      t.string :Website_Address

      t.timestamps
    end
  end
end
