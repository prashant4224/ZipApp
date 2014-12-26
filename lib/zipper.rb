require 'rubygems'
require 'zip'
module Zipper

folder = "/home/prashant/Documents/proj/hyd-prog/ZipApp/app/public/images"
input_filenames = ['image.jpg', 'description.txt', 'stats.csv']

zipfile_name = "/home/prashant/Documents/proj/hyd-prog/ZipApp/app/public/images/photos.zip"

Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
  input_filenames.each do |filename|
    # Two arguments:
    # - The name of the file as it will appear in the archive
    # - The original file, including the path to find it
    zipfile.add(filename, folder + '/' + filename)
  end
  zipfile.get_output_stream("myFile") { |os| os.write "myFile contains just this" }
end
end