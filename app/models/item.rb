class Item < ApplicationRecord
    before_create { |item| item.name = item.name.capitalize }
    belongs_to :user
    has_attached_file :image
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]
end
