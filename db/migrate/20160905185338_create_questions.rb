class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :content
      t.boolean :active?
      t.references :quiz, foreign_key: true
      t.string :possible_answers, array: true, default: []

      t.timestamps
    end
  end
end
