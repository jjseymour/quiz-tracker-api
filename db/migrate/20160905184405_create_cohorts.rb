class CreateCohorts < ActiveRecord::Migration[5.0]
  def change
    create_table :cohorts do |t|
      t.string :student_named
      t.string :flatiron_named
      t.integer :expected_student_number
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
