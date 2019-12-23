function test = motor()
myev3 = legoev3;
mymotor = motor(myev3,'A');
resetRotation(mymotor)
mymotor.Speed = 50;
mymotor.Speed = -50;
start(mymotor);
wait(0.5);
stop(mymotor);
end