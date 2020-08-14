class BusinessAndCompanyAssociation < ActiveRecord::Migration[5.0]
  def change
    add_column :business_statues, :company_id, :integer
  end
end