class CreateGroupImages < ActiveRecord::Migration[6.0]
  def change
    create_table :group_images do |t|
      t.references :group, null: false, foreign_key: true
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :group_images, :images, on_delete: :cascade
    add_foreign_key :group_images, :groups, on_delete: :cascade
  end
end
