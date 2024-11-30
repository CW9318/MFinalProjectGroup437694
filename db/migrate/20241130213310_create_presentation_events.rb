class CreatePresentationEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :presentation_events do |t|
      t.string :title
      t.datetime :date
      t.text :description
      t.string :instructor_name

      t.timestamps
    end
  end
end
