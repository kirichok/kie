var EventEmitter = require('events').EventEmitter;
var rooms = {};
var ee = new EventEmitter();

var int = function(){
    console.log(process.memoryUsage().heapUsed);
};

//setInterval(int, 300);

function Client(socket) {
    this.socket = socket;
    this.room = null;
    this.id = null;
    this.handle = null;
    this.arr = new Array(1000000);

    this.init();
}

Client.prototype.init = function () {
    this.options(this.socket.upgradeReq.url.split('/'));
    this.addToRoom(this.room);
    this.events();
};

Client.prototype.destroy = function (skip) {
    rooms[this.room].remove(this.handle);
    this.handle = null;
    this.id = null;
};

Client.prototype.events = function () {
    var self = this;
    this.socket.on('message', function (data) {
        self.onMessage(data);
    });
    this.socket.on('error', function (error) {
        self.onError(error);
    });
    this.socket.on('close', function () {
        self.onClose();
    });
};

Client.prototype.options = function (option) {
    if (!rooms[option[1]]) {
        rooms[option[1]] = new Room(option[1]);
    }
    this.room = option[1];
    this.id = option[2];
};

Client.prototype.addToRoom = function (room) {
    var self = this;
    rooms[room].add(this.handle = function (data) {
        self.send(data);
    });
};

Client.prototype.onMessage = function (data) {
    // check for valid data
    // parse data
    // check room: if new then add to this room

    rooms[this.room].message('"' + this.id + '" ' + data);
};

Client.prototype.onError = function (error) {
    //console.log('Error: ' + error);
    //this.destroy(true);
};

Client.prototype.onClose = function () {
    this.destroy();
    this.socket.close();
};

Client.prototype.send = function (data) {
    if (this.socket.readyState = 1) {
        this.socket.send(JSON.stringify({M: data, Owner: this.id}));
    }
};

function Room(name) {
    this.name = name;
    this.ee = ee;
}

Room.prototype.add = function (handle) {
    this.ee.addListener(this.name, handle);
};

Room.prototype.remove = function (handle) {
    this.ee.removeListener(this.name, handle);
};

Room.prototype.message = function (data) {
    this.ee.emit(this.name, data);
};

module.exports = Client;

