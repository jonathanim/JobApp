class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :job_type
      t.string :company
      t.text :description
      t.string :salary
      t.boolean :bonus
      t.datetime :created_at

      t.timestamps
    end
  end
end
