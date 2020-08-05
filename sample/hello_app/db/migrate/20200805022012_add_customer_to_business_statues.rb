class AddCustomerToBusinessStatues < ActiveRecord::Migration[5.1]
  def change
    add_column :business_statues, :customer, :string
  end
  @business_statues = BusinessStatue.all.order(date: "DESC”)
end
