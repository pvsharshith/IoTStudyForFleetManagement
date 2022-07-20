# Import package
import paho.mqtt.client as mqtt
import json
import time

# Define Variables
MQTT_HOST = "mqtt.eclipseprojects.io"
MQTT_PORT = 1883
MQTT_KEEPALIVE_INTERVAL = 5
MQTT_TOPIC = "fleet/truck1"
# MQTT_MSG = "Hello MQTT"
JSON_OBJ = open('data.json') #Opening JSON file

# returns JSON object as a dictionary
data = json.load(JSON_OBJ)

# Define on_connect event Handler
def on_connect(mosq, obj, rc):
	print("Connected to MQTT Broker")

# Define on_publish event Handler
def on_publish(client, userdata, mid):
	print("Message Published...")

# Initiate MQTT Client
mqttc = mqtt.Client()

# Register Event Handlers
mqttc.on_publish = on_publish
mqttc.on_connect = on_connect

# Connect with MQTT Broker
mqttc.connect(MQTT_HOST, MQTT_PORT, MQTT_KEEPALIVE_INTERVAL) 

# Publish message to MQTT Topic
for item in data:
  packet = json.dumps(item)
  mqttc.publish(MQTT_TOPIC,packet)
  time.sleep(3)

# Disconnect from MQTT_Broker
mqttc.disconnect()

#Closing JSON file
JSON_OBJ.close()