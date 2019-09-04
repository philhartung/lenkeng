A simple program to receive image data from the Lenkeng LKV373 HDMI-extender.

Contents:

__setup.sh__: Configure specified interface for the TX Unit.

__simple_receiver.c__: The actual receiver. It provides 25fps of mjpeg via a tcp port configurable with -p. To select the interface that the data should be received on, use the -i command line switch. To compile it, you need libevent-dev. Then, you can use something like this:
`$ gcc -o simple_receiver simple_receiver.c -levent`

__fallback.jpg__: An image transmitted by simple_receiver when the data received from hdmi grows stale.

Usage:

`$ sudo ./simple_receiver -i eth1 -p 81`
 - -i specifies the interface where the LKV373 is connected
 - -p specifies the port on which the mjpeg stream should be served

Troubleshooting:
"Could not bind trigger UDP socket: Cannot assign requested address": you must configure the interface first:
`$ sudo ./setup.sh eth1`
