class ApiConstants  {
  var baseUrl = 'http://54.147.56.252:3000/v1';

  var socialLogin = "/auth/social-auth";
  var emergencyContact = "/users/emergency-contact";
  var updateEmergencyContact = "/users/update-emergency-contact";
  var getEmergencyContact = "/users/get-emergency-contacts";
  var deleteEmergencyContact = "/users/remove-emergency-contact";
  var uploadResource = "/utils/upload-resource";
  var updateUserProfile = "/users/update-user-profile";
  var getUserProfile = "/users/get-user";
  var getAllActivity = "/users/get-activities";
  var getUserFeed = "/users/feeds";
  var getSpots = "/spots/get-spots";
  var getSpot = "/spots/get-spot";
  var getPostBySpot = "/post/post-by-spot";
  var getActivities = "/post/get-activities-type";
  var getUserReview = "/spots/get-user-reviews";
  var getReviews = "/spots/get-reviews";
  var spotSaved = "/spots/favorite-spot";
  var submitReview = "/spots/submit-review";
  var createPost = "/post/create-post";
  var getPosts = "/post/posts";
  var getPostsById = "/post/get-post";
  var likePost = "/post/like";
  var commentPost = "/post/get-comments";
  var postComment ='/post/comment';
  var postReport ='/post/report';
  var postBlock = '/post/report-and-block';
  var getLeaderBoard = '/users/get-leaderboard';
  var activitiesTypeFilter = "/post/get-activities-type";
  var getSpotAttraction = "/spots/get-spot-attractions";
  var getMyActivities = "/users/get-activities";
  var getFavourite  = "/spots/get-favourite";
  var myFeed = '/users/feed';
  var completeTrip = "/users/complete-trip";
  var getCompleteTrip = "/users/get-completed-trips";
  var getFaq = '/content/get-faq';
  var getContent = '/content/get-content';
  var getUserPreferences = '/users/get-user-preferences';
  var updateUserPreferences = '/users/update-user-preferences';
  var spotSpecies  ="/spots/get-spot-species";
  var postSpecies = '/post/get-species';
  var userDelete  ="/users/delete";
  var postDelete = "/post/delete-post";
  var notification = "/users/get-notification";
  var logOut = "/users/log-out";




  ///Weather Api
  var openWeatherBaseUrl = 'https://api.openweathermap.org/data/2.5/';
  var openWeatherAppId = 'appid=00c73ebac34412222f7c731c148b6d16';
  var weather = 'weather';
}
