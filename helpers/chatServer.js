var EventEmitter = require('events').EventEmitter;
var rooms = {};
var ee = new EventEmitter();

var int = function(){
    console.log(process.memoryUsage().heapUsed);
};

setInterval(int, 300);

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
    this.addToRoom();
    this.events();
};

Client.prototype.destroy = function (skip) {
    rooms[this.room].remove(this.handle);
    this.handle = null;
    //this.socket = null;
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

Client.prototype.addToRoom = function () {
    var self = this;
    rooms[this.room].add(this.handle = function (data) {
        //console.log('data: ' + self.id + ' -> ' + data);
        self.send(/*JSON.stringify*/data);
    });
};

Client.prototype.onMessage = function (data) {
    rooms[this.room].message('"' + this.id + '" ' + data);
    //console.log('Data from Room: ' + this.room.name + ' Id: ' + this.id + ' Data: ' + data);
};

Client.prototype.onError = function (error) {
    //console.log('Error: ' + error);
    //this.destroy(true);
};

Client.prototype.onClose = function () {
    //console.log('Close');
    this.destroy(true);
    this.socket.close();
    //this.socket = null;
    //this.destroy(true);

    //console.log(process.memoryUsage().heapUsed);

};

Client.prototype.send = function (data) {
    if (this.socket.readyState = 1) {
        this.socket.send({M: data, Owner: this.id});
    }
};

function Room(name) {
    this.name = name;
    this.ee = ee;
}

Room.prototype.add = function (handle) {
    this.ee.addListener(this.name, handle);
    //console.log(EventEmitter.listenerCount(ee, this.name));
};

Room.prototype.remove = function (handle) {
    this.ee.removeListener(this.name, handle);
    //console.log(EventEmitter.listenerCount(ee, this.name)/* this.ee.event(this.name)*/);
};

Room.prototype.message = function (data) {
    this.ee.emit(this.name, data);
};

module.exports = Client;

