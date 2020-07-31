class CreateBusinessStatues < ActiveRecord::Migration[5.1]
  def change
    create_table :business_statues do |t|
      t.string :content

      t.timestamps
    end
  end
end
