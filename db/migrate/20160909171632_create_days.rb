class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.column :date, :string

      t.timestamps
    end
  end
end
