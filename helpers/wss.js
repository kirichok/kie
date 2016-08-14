var WebSocketServer = require('ws').Server;
var Client = require('./chatServer');
var wss = null;

exports.wss_init = function(server){
    wss = new WebSocketServer({server: server});
    wss.on('connection', function (socket) {
        //console.log(socket.upgradeReq.url, socket.readyState);

        var client = new Client(socket);

        /*socket.on('error', function () {
            //console.log('0!!!', process.memoryUsage().heapUsed);
            //client.destroy();
            //client.socket = null;
            //client = null;

            //console.log(process.memoryUsage().heapUsed);
        });*/

        /*socket.on('message', function (message) {
            console.log(message, arguments);
        });

        socket.on('error', function () {
            console.log('error', arguments);
        });

        socket.on('close', function () {
            console.log('close', arguments);
        });*/
    });
    wss.on('error', function () {
        console.log('wss error');
        client.destroy();
        client.socket = null;
        client = null;
    });
};
exports.wss = wss;


/*
exports.wss_init = function (server) {
    console.log(server);
    return;

    var wss = new WebSocketServer({server: server});
    var clients = [];

    wss.on('connection', function (socket) {
        var connection = socket;
        //var connection = socket.accept('', socket.origin);
        clients.push(connection);
        console.log('Connected ' + connection.upgradeReq.headers.origin);

        connection.on('message', function (message) {

            console.info(message);

            var data = JSON.parse(message);

            switch (data.header) {
                case 'message':
                    sendMessageAllClients(message, false);
                    break;
                case 'updateUsers':
                    clients[clients.indexOf(connection)].chatUserName = data.user;
                    updateUsersList();
                    break;

            }

            console.log('Received: header-' + data.header + ', user-' + data.user + ', message-' + data.message);
        });
        connection.on('close', function (reasonCode, description) {
            console.log('Disconnected ' + connection.upgradeReq.headers.host);

            var clientId = clients.indexOf(connection);
            if (clientId != -1) {
                clients.splice(clientId, 1);
            }

            updateUsersList();
        });

        function updateUsersList() {
            var chatUsers = [];

            clients.forEach(function (client) {
                chatUsers.push(client.chatUserName);
            });

            data = {
                header: 'updateUsers',
                users: chatUsers
            };

            sendMessageAllClients(JSON.stringify(data), true);
        }

        function sendMessageAllClients(data, ignoreCurrent) {
            clients.forEach(function (client) {
                if (ignoreCurrent || connection !== client) {
                    client.send(data);
                }
            });
        }
    });
};

*/
