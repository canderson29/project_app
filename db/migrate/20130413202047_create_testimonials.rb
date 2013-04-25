class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :comment
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end
end
