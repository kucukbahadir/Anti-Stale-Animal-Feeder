function distance = sonicReading()

myev3 = legoev3
mysonicsensor = sonicSensor(myev3)
distance = readDistance(mysonicsensor)