class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.json :content, null: false, default: "{}"
      t.string :type
      t.references :attachable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
