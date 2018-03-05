class AddAttachmentPictureToPortfolios < ActiveRecord::Migration[5.1]
  def self.up
    change_table :portfolios do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :portfolios, :picture
  end
end
