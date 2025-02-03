class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string    :title, limit: 250
      t.text      :description, limit: 2000
      t.string    :status, limit: 50

      t.timestamps
    end
  end
end
