class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string    :description, limit: 2000
      t.integer   :project_id
      t.string    :user_id
      t.string    :project_status

      t.timestamps
    end
  end
end
