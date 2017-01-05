class CreateV1Users < ActiveRecord::Migration[5.0]
  def change
    create_table :v1_users do |t|
      t.string :fName
      t.string :lName
      t.string :username
      t.string :password_digest
      t.string :role

      t.timestamps
    end
  end
end
