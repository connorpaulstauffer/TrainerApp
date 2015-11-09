class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|
			t.string :first_name, null: false, index: true
			t.string :last_name, null: false, index: true
			t.string :email, null: false, index: true

      t.timestamps null: false
    end
  end

end
