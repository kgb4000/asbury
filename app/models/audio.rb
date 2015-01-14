class Audio < ActiveRecord::Base

	 has_attached_file :music, storage: :s3, :s3_credentials => "#{Rails.root}/config/application.yml"

	 validates_attachment_content_type :music, :content_type => ['audio/mpeg']

end
