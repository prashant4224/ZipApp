class User < ActiveRecord::Base
#require 'photo_zip'
#extend Zipper
	# require 'zip/zip'
  #require 'rubyzip'
  #include PhotoZip

  attr_accessible :name, :avatar, :photos, :photos_attributes, :first_name, :middle_initial, :last_name
  has_many :photos
  accepts_nested_attributes_for :photos, :allow_destroy => true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" ,:url => "/public/images", :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" ,:url => "/public/images"

  # after_save :download

  #after_create :create_zip

  #def create_zip
 #	self.zip_create
  #end


  # def download
  # 	photos = self.photos
  # 	puts photos
  # 	puts "photos------"
  # 	download_zip(photos)
  # end

  # def download_zip(image_list)
  #   if !image_list.blank?
  #     file_name = "pictures.zip"
  #     t = Tempfile.new("my-temp-filename-#{Time.now}")
  #     Zip::ZipOutputStream.write_buffer do |z|
  #       image_list.each do |img|
  #         title = img.avatar_file_name
  #         title += ".jpg" unless title.end_with?(".jpg")
  #         z.put_next_entry(title)
  #         z.print IO.read(img.url)
  #       end
  #     end
  #     puts "download_zip"
  #     send_file t.url, :type => 'application/zip',
  #                            :disposition => 'attachment',
  #                            :filename => file_name
  #     t.close
  #   end
  # end

	def full_name
		f_name = first_name + " " if !first_name.blank?
		f_name += middle_initial + " "  if !middle_initial.blank?
		f_name += last_name if !last_name.blank?
		f_name
	end


end
