class AddSituationToBusinessStatues < ActiveRecord::Migration[5.1]
  def change
    add_column :business_statues, :situation, :string
  end
end
