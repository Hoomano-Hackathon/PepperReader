var session = new QiSession();


var buttonSay = document.getElementById("say");


buttonSay.addEventListener("click", function(){
    session.service("ALTextToSpeech").done(function (tts) {
        tts.say("Bonjour je parle a travers du html");
    }).fail(function (error) {
        console.log("An error occurred:", error);
    });
});

