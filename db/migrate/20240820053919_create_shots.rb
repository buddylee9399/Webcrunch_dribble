class CreateShots < ActiveRecord::Migration[7.0]
  def change
    create_table :shots do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
