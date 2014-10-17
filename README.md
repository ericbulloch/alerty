# Alerty

Alerty is used to send a desktop notification to another machine or to your machine as another user. It uses a client-server model to accomplish this. Some cases this might be useful include:

* Sending a notification to yourself when a process ran by another user finishes

* Sending a notification to a friend in your LAN

The messages that are consumed by the server are not saved so this is not a replacement for chat (although it is possible that your router or other networking software is recording the messages you send).

## Notes

Currently the software is hard coded to run on port 15450.

## Example Usage

To start the server run `./server.sh` as the user you want to received desktop notifications as.

If you run the previous command as the user bob, you can then use the `client.sh` script to send a desktop notification as another user on the same machine. For example, if you were running a continuous integration system as the user ci on your machine, ci could let bob know the build was finished with the following command:

`./client.sh 127.0.0.1 "Work complete!"`

You could also tell a user on the LAN at 192.168.10.5 that has started the server they are awesome with the following command:

`./client.sh 192.168.10.5 "You are awesome!"`
