class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :code
      t.string :name
      t.integer :quantity_credits, default: 1
      t.decimal :amount, default: 0.0
      t.integer :semester, default: 1

      t.timestamps null: false
    end
  end
end
