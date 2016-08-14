var id = Math.floor(Math.random() * 100);
createSocket();

function createSocket() {
    var socket = new WebSocket(location.origin.replace(/^http/, 'ws') + '/kie/id123456789_' + id); //'ws://' + window.location.hostname + ':4000/ws');

    socket.onopen = function () {
        console.log('connected', socket.readyState);
        if (socket.readyState != 1) return;
        socket.send('hello');
    };
    socket.onclose = function () {
        console.log('close');
        setTimeout(function () {
            createSocket();
        }, 2000);
    };
    socket.onerror = function (error) {
        console.log('error: ' + error);
    };
    socket.onmessage = function(message) {
        console.log('message: ' + message.data, arguments);
    }

}


function Chat() {
    //this.ws =
}

Chat.prototype.init = function () {

};

Chat.prototype.send = function () {

};

Chat.prototype.receive = function () {

};

