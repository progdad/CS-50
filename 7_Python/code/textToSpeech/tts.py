# `pyttsx3` module installation required

import pyttsx3 
import re
  
# Initialize the converter 
converter = pyttsx3.init() 
  
# Set properties before adding 
# Things to say 
  
# Sets speed percent  
# Can be more than 100 
converter.setProperty('rate', 150) 
# Set volume 0-1 
converter.setProperty('volume', 0.7) 
converter.setProperty('voice', "english-us")

name = input("Enter your name, please: ")

converter.say(f"Hello, {name}!") 
converter.say("This is an example of text-to-speech transformation using Python. I sound very much like Stephen Hawking, damn it. Cool, isn' it? Ahahahahahahhhhaa")

voices = converter.getProperty('voices') 
for voice in voices: 
    # to get the info. about various voices in our PC  
    if re.match(r"en-|english", voice.id):
        print("ID: %s" %voice.id) 
        print("Name: %s" %voice.name) 
        print("Languages Known: %s" %voice.languages) 
        print("\n")

# Empties the say() queue 
# Program will not continue 
# until all speech is done talking 
converter.runAndWait() 
