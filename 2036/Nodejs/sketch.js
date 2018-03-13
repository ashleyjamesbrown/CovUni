var talk = new p5.Speech();
var listen = new p5.SpeechRec();

var a;
var b;
var q;

var bot;

function setup(){
 createCanvas(100,100);
 background(0);

 //use select to grab the data from the specific id element on the html page
 b = select('#submit');
 q = select('#user');
 a = select('#response');

 b.mousePressed(chatBot); //whenever the button pressed call chatbot


 // brain stuff

 bot = new RiveScript();
 bot.loadFile("./brain.rive",botReady,botError); //2 functions

 // speech stuff
 talk.speak("hello you are talking to rivescript"); // say something to begin and ensure speech works

 listen.continuous = true; //constant listen
 listen.onResult = showResult; // trigger the function on every listen
 listen.start(); //start listening
}

function botReady(){
  //console.log('rivescript loaded');
  createP(" - CHAT TRANSCRIPT - ")
  createP("RiveScript is Loaded. ChatBot active");
  createP("Hello User, how can I help you today ?");

  bot.sortReplies(); //gets the file ready with the list of potential answers
}

function botError(){
  console.log('rivescript not loaded - please check files');
}

function chatBot(){
 var question = q.value(); //get what is written in that
 // pass it to rivescript
 var reply = bot.reply("local-user",question);
 //output the rivescript answer in teh box
 a.value(reply);

 // talk the rivescript answer
 talk.speak(reply);
 createP(reply); //also add it to teh transcript
}


function draw(){
  //interactive drawing at the same time
 fill(200,20,200,90);
 ellipse(mouseX,mouseY,10,10);
}


function keyPressed(){
  //talk.speak("hi there bot");
}

function showResult(){
// output what we just said to the console or the window
  //console.log(listen.resultString);

  createP(listen.resultString);

  q.value(listen.resultString); //put the answer from us into the question
  chatBot(); //run the chatbot code instead of pressing the button

}
