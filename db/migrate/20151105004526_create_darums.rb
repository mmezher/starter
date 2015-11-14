class CreateDarums < ActiveRecord::Migration
  def change
    create_table :darums do |t|
      t.references :user, index: true, foreign_key: true
      t.string :csv_id

      t.timestamps null: false
    end
  end
end
