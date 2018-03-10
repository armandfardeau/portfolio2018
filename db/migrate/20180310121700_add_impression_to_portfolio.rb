class AddImpressionToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :impression, :integer, :default => 0
    add_column :portfolios, :sponsored, :boolean, :default => false
  end
end
