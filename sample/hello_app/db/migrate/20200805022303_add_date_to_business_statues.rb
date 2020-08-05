class AddDateToBusinessStatues < ActiveRecord::Migration[5.1]
  def change
    add_column :business_statues, :date, :string
  end
end
