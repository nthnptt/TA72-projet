import consumer from "./consumer"

window.subscribe = function (id) {
    return consumer.subscriptions.create("ChatRoomChannel"+id, {
        connected() {
            console.log("Connected to the room!");
            // Called when the subscription is ready for use on the server
        },

        disconnected() {
            // Called when the subscription has been terminated by the server
        },

        received(data) {
            // Called when there's incoming data on the websocket for this channel
            console.log(data)
        }
    });
}
