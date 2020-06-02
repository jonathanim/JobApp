class RemoveJobApplicationIdFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :job_application_id, :integer
  end
end
