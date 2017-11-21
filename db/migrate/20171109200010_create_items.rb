class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.references :list, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
