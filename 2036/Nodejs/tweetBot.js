var Twitter = require('twitter');

var client = new Twitter({
  consumer_key: 'put yours in here',
  consumer_secret: 'put yours in here',
  access_token_key: 'put yours in here',
  access_token_secret: 'put yours in here'
});



client.get('search/tweets', {q: 'this is the hashtag'},
function(error, tweets, response) {
   console.log(tweets);
});
