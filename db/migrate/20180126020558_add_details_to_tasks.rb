class AddDetailsToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :due_date, :datetime
    add_column :tasks, :important, :string
  end
end
