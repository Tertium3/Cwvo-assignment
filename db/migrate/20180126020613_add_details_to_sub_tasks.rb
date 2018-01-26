class AddDetailsToSubTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_tasks, :due_date, :datetime
    add_column :sub_tasks, :important, :string
  end
end
