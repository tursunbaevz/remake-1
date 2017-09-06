class Project < ApplicationRecord
   has_attached_file :image, styles: {
    thumb: '200x200>',
    square: '500x500#',
    medium: '700x700>'
   }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
