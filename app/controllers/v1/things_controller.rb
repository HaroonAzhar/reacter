class V1::ThingsController< ApplicationController
 def index 
	 render json: { :things=>[
		   {


           :name => 'somethingy',
           :guid => '010030210030d-wedad342e-cdf3wd2'
           }

		]}.to_json

 end
end