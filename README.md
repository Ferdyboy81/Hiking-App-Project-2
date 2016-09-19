<img src="http://i.imgur.com/HRj9oRq.png">

# Ascend LA 
Ascend LA is a hiking app that was made to help hiking enthusiast search trails to hike and review. This is catered towards the LA hiking community. Users can search for trails in LA, get directions through Google Geolocation API, comment and rate trails, and also post photos of their experience.

##Technologies


| Technologies  | APIs   	    | Deployment |
| ------------- |:------------| -----------|
| Ruby     	    | Google Maps | Heroku	   |
| Rails       	|             |            |
| PostgresSQL 	|       			|    	   	   |
| Devise  	    |      			  |    	   	   |
| JavaScript		| 			      |    	   	   |
| HTML 5     	  |      			  |    	   	   |
| CSS 3 	      |      			  |    	   	   |
| Carrierwave   |             |            |

##User Model

| Parameters  | Value   	  | Description  | Example |
| ----------- | ------------| ------------ | ------- |
| Email   	  | String 		  | user email   | "knishime@gmail.com" |
| Password 		| String  	  | user password| "password123" |
| Encrypted Pw| String      | jwt encrypted password | fadk12394b3eo|
| Firstname	  | String    	| users first name|"Kayli" |
| Lasname		  | String     	| users last name | "Nishime" |
| Username 	  | String    	| username used for login | kaynishime|
| Createdat	  | Datetime    | Date the profile was created| 2016-08-14T22:48:15.387Z |
