import qi
import sys
import os
import subprocess
import urllib2
import urllib
import re
import base64
import json



class Scanner:

    def __init__(self, session):
        self.session = session
        self.tts = self.session.service("ALTextToSpeech")

    def scan(self, imagePath):
        urllib.urlretrieve("http://pepper_3.local/apps/pepperreader/image.jpg", "images/feuille.jpg")

        with open("document-scanner/images/feuille.jpg", "rb") as image_file:
            encoded_string = base64.b64encode(image_file.read())
        
        #Put your google cloud Vision API key 
        req = urllib2.Request('https://vision.googleapis.com/v1/images:annotate?key=PUTYOURAPIKEY') 
        
        req.add_header('Content-Type', 'application/json')

        jsonString = json.dumps({
                                  "requests": [
                                    {
                                      "image": {
                                      	"content": encoded_string
                                      },
                                      "features": [
                                        {
                                          "type": "TEXT_DETECTION"
                                        }
                                      ]
                                    }
                                  ]
                                })
        response = urllib2.urlopen(req, jsonString)
        txt = response.read()

        t = json.loads(txt)
        print(t["responses"][0]["textAnnotations"][0]["description"])
        return t["responses"][0]["textAnnotations"][0]["description"]
        
                    
app = qi.Application(sys.argv)
app.start()

s = app.session
my_module = Scanner(s)
s.registerService("Scanner", my_module)

app.run()

