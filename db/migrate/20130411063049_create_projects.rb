class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.date :date
      t.integer :service_id

      t.timestamps
    end
  end
end
