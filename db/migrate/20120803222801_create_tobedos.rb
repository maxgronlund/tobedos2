class CreateTobedos < ActiveRecord::Migration
  def change
    create_table :tobedos do |t|
      t.string :title
      t.text :description
      t.boolean :done

      t.timestamps
    end
  end
end
