class Tweet < ActiveRecord::Base

	client.sample do |object|
	  puts object.text if object.is_a?(Twitter::Tweet)
	end


		client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = "Jz0mSDyxrSo5nVL0wFq8PuXST"
	  config.consumer_secret     = "j4nyakg37oKs3jYoqB8q6gQIjC1SUy7kACKInR2Iuo49zJ38s6 "
	  config.access_token        = "254223023-7eSfZUzeux6g0FnOdRu7CWCyIjQb1mbQnjRLzB8A"
	  config.access_token_secret = "y3ch1dU0V9HEgFYnbxAmwmYgULouhfAyIiJ8fsFqepCu2 "
	end

	#twitter_api_key: Jz0mSDyxrSo5nVL0wFq8PuXST
#twitter_api_secret:j4nyakg37oKs3jYoqB8q6gQIjC1SUy7kACKInR2Iuo49zJ38s6 

#twitter_access_token: 254223023-7eSfZUzeux6g0FnOdRu7CWCyIjQb1mbQnjRLzB8A
#twitter_access_token_secret: y3ch1dU0V9HEgFYnbxAmwmYgULouhfAyIiJ8fsFqepCu2 


end
