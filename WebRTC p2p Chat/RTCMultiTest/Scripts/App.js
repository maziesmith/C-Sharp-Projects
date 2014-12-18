var connection = new RTCMultiConnection();


connection.session = {
    audio: true,
    video: true,
};


//Gets the local or remote media stream and adds it to the page
connection.onstream = function (e) {
    var videoElement = document.querySelector('.videoContainer');
    videoElement.appendChild(e.mediaElement);
    console.log("Audio or Video stream added to the page");

};

//// setup signaling channel
connection.connect();
//screenShareConnection.connect();
console.log("Signaling channel initiated");


// open new session and allow screen sharing
window.onload = function () {
    document.querySelector('#openNewSessionButton').onclick = function () {
        connection.open();
        console.log("Session has been created");
    };


    document.querySelector('#shareScreenButton').onclick = function () {
        var screenShare = connection.addStream({
            screen: true,
            oneway: true
        });
        console.log("Attempting to start Screen Share");
    };
};









