class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :idea
      t.string :address
      t.integer :zipcode
      t.text :problem
      t.text :solution

      t.timestamps
    end
  end
end
