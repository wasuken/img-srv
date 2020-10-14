class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.binary :bin
      t.string :name

      t.timestamps
    end
  end
end
