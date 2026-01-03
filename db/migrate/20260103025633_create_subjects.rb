class CreateSubjects < ActiveRecord::Migration[8.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :credits
      t.string :subject_code
      t.string :professor
      t.references :semester, null: false, foreign_key: true

      t.timestamps
    end
  end
end
