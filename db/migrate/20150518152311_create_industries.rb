class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.text :description
      t.timestamps null:false
    end
  end
end
