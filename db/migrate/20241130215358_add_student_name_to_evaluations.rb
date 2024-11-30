class AddStudentNameToEvaluations < ActiveRecord::Migration[8.0]
  def change
    add_column :evaluations, :student_name, :string
  end
end
