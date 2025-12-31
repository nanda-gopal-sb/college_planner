class CreateSemesters < ActiveRecord::Migration[8.0]
  def change
    create_table :semesters do |t|
      t.string :name
      t.boolean :active
      t.integer :number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
