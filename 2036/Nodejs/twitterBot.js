var Twitter = require('twitter');

var client = new Twitter({
  consumer_key: 'put yours in here',
  consumer_secret: 'put yours in here',
  access_token_key: 'put yours in here',
  access_token_secret: 'put yours in here'
});




var params = {screen_name: 'username we want to see'};
client.get('statuses/user_timeline', params, function(error, tweets, response) {
  if (!error) {
    console.log(tweets);
  }
});



client.get('search/tweets', {q: 'cov2021'},
function(error, tweets, response) {
   console.log(tweets);
});


client.post('statuses/update', {status: 'this is the tweet we will send'}, function(error, tweet, response) {
  if (!error) {
    console.log(tweet);
  }
});
