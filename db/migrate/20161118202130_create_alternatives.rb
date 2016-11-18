class CreateAlternatives < ActiveRecord::Migration[5.0]
  def change
    create_table :alternatives do |t|
      t.string :text
      t.references :question, foreign_key: true

      t.timestamps null: false
    end
  end
end
