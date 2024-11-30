class CreateEvaluations < ActiveRecord::Migration[8.0]
  def change
    create_table :evaluations do |t|
      t.integer :score
      t.text :comments
      t.references :presentation_event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
