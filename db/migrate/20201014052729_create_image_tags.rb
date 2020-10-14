class CreateImageTags < ActiveRecord::Migration[6.0]
  def change
    create_table :image_tags do |t|
      t.references :image, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :image_tags, :images, on_delete: :cascade
    add_foreign_key :image_tags, :tags, on_delete: :cascade
  end
end
