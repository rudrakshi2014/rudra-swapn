class CreateArts < ActiveRecord::Migration[7.0]
  def change
    create_table :arts do |t|
      t.string :name
      t.references :art_type, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
