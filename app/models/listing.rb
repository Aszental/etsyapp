class Listing < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "64x64!" }, :default_url => "default.jpg" 
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ ,
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml")

end


