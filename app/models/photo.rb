class Photo < ActiveRecord::Base
  attr_accessible :user_id, :avatar

  #require 'rubyzip'
  #extend PhotoZip

  belongs_to :user

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" ,:url => "/public/images"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

#callbacks
#after_save :photos_zip

#after_save :create_zip

#def create_zip
#	Photo.zip_create
#end


# def photos_zip(dir, zip_dir)
# 	Photo.zip(dir, zip_dir, remove_after = false)
# end

end
