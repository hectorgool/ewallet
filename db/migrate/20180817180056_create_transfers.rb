class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.references :wallet, foreign_key: true

      t.timestamps
    end
  end
end
