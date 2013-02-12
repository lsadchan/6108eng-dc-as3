class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :firstname
      t.text :lastname
      t.text :street
      t.text :city
      t.text :postcode
      t.text :county
      t.text :mobile
      t.text :email
      t.text :username
      t.text :password

      t.timestamps
    end
  end
end
