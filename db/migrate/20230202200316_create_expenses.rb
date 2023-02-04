class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :date
      t.float :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
