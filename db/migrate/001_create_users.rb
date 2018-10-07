class CreateUsers < ActiveRecord::Migration[4.2]
  def up
    create_table :users do |t|
    	t.string "first_name"
    	t.string "last_name"
      t.string :email
    end
  end

  def down
    drop_table :users
  end
end
