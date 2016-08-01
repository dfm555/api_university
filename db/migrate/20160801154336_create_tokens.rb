class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :name
      t.string :token
      t.integer :number_of_requests, default: 0
      t.boolean :status, default: true

      t.timestamps null: false
    end
  end
end
