class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string    :first_name, limit: 150
      t.string    :last_name, limit: 150

      t.timestamps
    end
  end
end
