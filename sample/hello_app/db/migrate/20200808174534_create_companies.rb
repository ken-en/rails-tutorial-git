class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.text :name
      t.text :work_description      
      t.date :limit_date
      t.text :state　
      
      t.timestamps
    end
  end
end
