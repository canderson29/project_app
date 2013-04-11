class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :service_id
      t.date :date
      
      t.timestamps
    end
  end
end
