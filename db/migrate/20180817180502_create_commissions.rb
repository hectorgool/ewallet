class CreateCommissions < ActiveRecord::Migration[5.2]
  def change
    create_table :commissions do |t|
      t.references :transfer, foreign_key: true

      t.timestamps
    end
  end
end
