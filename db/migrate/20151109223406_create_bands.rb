class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
