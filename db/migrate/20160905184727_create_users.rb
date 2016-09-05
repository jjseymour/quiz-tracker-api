class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.references :cohort, foreign_key: true
      t.boolean :instructor
      t.string :email
      t.string :password_digest
      t.string :all_instructor_emails, array: true, default: []

      t.timestamps
    end
  end
end
