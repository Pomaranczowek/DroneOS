print("Downloading File...")
os.execute("wget -f https://raw.githubusercontent.com/Pomaranczowek/DroneOS/main/droneos.lua /tmp/droneos.lua")
print("File Download Finished.")
print("Flashing DroneOS to EEPROM...")
os.execute("flash -q /tmp/droneos.lua DroneOS")
print("DroneOS successfully flashed onto EEPROM.")
