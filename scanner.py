import qi
import sys
import os
import subprocess


class Scanner:

    def __init__(self, session):
        self.session = session

    def scan(self, imagePath):
        os.getcwd()
        subprocess.call(r'python document-scanner/scan.py -i document-scanner/images/page.jpg', shell=True)      

        subprocess.call(r'tesseract image.jpg text -l fra', shell=True)
                    
app = qi.Application(sys.argv)
app.start()

s = app.session
my_module = Scanner(s)
s.registerService("Scanner", my_module)

app.run()

