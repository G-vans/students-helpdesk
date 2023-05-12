class CreateProblems < ActiveRecord::Migration[7.0]
  def change
    create_table :problems do |t|
      t.string :title
      t.text :description
      t.string :tags
      t.references :user, null: false, foreign_key: true
      t.boolean :solved

      t.timestamps
    end
  end
end
