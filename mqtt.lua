m = mqtt.Client("sheen", 120)
m:on("offline", function(con) print ("offline")
	m:connect("192.168.7.1", 1883, 0)
 end)
m:on("connect", function(con) print ("connected")
	m:publish("/test","test from sheen@ relayr - booted",0,0)
	dofile("pub.lc")
 end)
m:connect("192.168.7.1", 1883, 0)
