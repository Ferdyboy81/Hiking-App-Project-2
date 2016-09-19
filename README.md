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
| Encrypted Pw| String      | jwt encrypted password | "fadk12394b3eo"|
| Firstname	  | String    	| users first name|"Kayli" |
| Lasname		  | String     	| users last name | "Nishime" |
| Username 	  | String    	| username used for login | "kaynishime" |
| Createdat	  | Datetime    | Date the profile was created| 2016-08-14T22:48:15.387Z |

##Trail Model

| Parameters  | Value   	  | Description           | Example |
| ----------- | ------------| ----------------------| ------- |
| Name  	    | String 		  | Name of hiking trail  | "Runyon Canyon Trail"|
| Location		| String  	  | City, State           | "Hollywood, CA" |
| Level       | String      | Easy, Moderate or Difficult| "moderate"|
| Distance    | String    	| Distance in miles     |"4.5 miles" |
| Lat         | Decimal    	| Latitude for googlemaps API | 34.10 |
| Lng         | Decimal     | Longitude for googlemaps API| -118.2 |

##Review Model

| Parameters  | Value   	  | Description           | Example |
| ----------- | ------------| ----------------------| ------- |
| Created_at 	| Datetime   	| Date the review was created | 2016-08-14T22:48:15.387Z|
| Updated_at	| Datetime 	  | Date the rview was updated  | 2016-04-02T22:28:12.387Z |
| Text        | String      | Users review                | "I enjoyed hiking this trail ..."|
| Trail_id    | Integer   	| Id of trail being reviewd   |1 |
| User_id     | Integer   	| Id of user reviewing the trail| 5 |

##Profile Model

| Parameters  | Value   	  | Description           | Example |
| ----------- | ------------| ----------------------| ------- |
| Created_at 	| Datetime   	| Date the review was created | 2016-08-14T22:48:15.387Z|
| Updated_at	| Datetime 	  | Date the rview was updated  | 2016-04-02T22:28:12.387Z |
| Name        | String      | Name of Image               | "Runyon Canyon Trail|
| Description | String    	| Caption inputed by User     | "View from the top of the hike" |
| Image       | String      | Url string of image         |  http://i.imgur.com/HRj9oRq.png |
| User_id     | Integer   	| Id of user reviewing the trail| 5 |

