class AddFieldsToPortfolios < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :stack, :text
    add_column :portfolios, :date, :datetime
    add_column :portfolios, :duration, :integer
    add_column :portfolios, :client, :string
  end
end
