class AddBusinessToBusinessStatues < ActiveRecord::Migration[5.1]
  def change
    add_column :business_statues, :business, :string
  end
end
