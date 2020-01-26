class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.text :bio
      t.date :birthdate
      t.string :sex
      t.string :interested_in

      t.timestamps
    end
  end
end
