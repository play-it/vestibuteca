class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :text, null: false
      t.references :source_application, foreign_key: true

      t.timestamps null: false
    end
  end
end
