require 'rubygems'
require 'zip'

module PhotoZip
		puts "---------zippp"
		directory = '/home/prashant/Documents/proj/hyd-prog/ZipApp/public/images'
		zipfile_name = '/home/prashant/Documents/proj/hyd-prog/ZipApp/public/images/photo.zip'

		Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
		    Dir[File.join(directory, '**', '**')].each do |file|
		      zipfile.add(file.sub(directory, ''), file)
		    end
		end
		puts "---------zip"
end
