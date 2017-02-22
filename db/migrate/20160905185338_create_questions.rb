class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :content
      t.boolean :active?
      t.string :code_mirror_language
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
