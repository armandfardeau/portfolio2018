class Portfolio < ApplicationRecord
  has_attached_file :picture, styles: {
      large: "600x600",
      medium: "300x300>",
      thumb: "100x100>"
  },
                    default_url: "/images/:style/missing.png",
                    storage: :cloudinary,
                    :cloudinary_url_options => {
                        :default => {
                            :secure => true
                        },
                    },
                    path: ':id/:style/:filename'
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  def upvote
    self.impression += 1
    self.save
  end
end
