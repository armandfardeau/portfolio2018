class Portfolio < ApplicationRecord
  has_attached_file :picture, styles: {medium: "300x300>", thumb: "100x100>"}, default_url: "/images/:style/missing.png",
                    :storage => :cloudinary,
                    :path => ':id/:style/:filename'
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end