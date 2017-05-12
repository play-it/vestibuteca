class CreateSourceApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :source_applications do |t|
      t.string :year, null: false, index: true
      t.references :source, foreign_key: true

      t.timestamps null: false
    end
  end
end
