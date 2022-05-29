from PIL import Image,ImageTk
import numpy as np
from matplotlib import pyplot as plt

# User Inputs
Amid = input("Enter the desired mid gain:")
Amid = int(Amid)
dA = input("Enter the desired gain range:")
dA = int(dA)

# #Error Code if input not correct

# Constants
Rstar = 100 #kilo ohms

# Calculated Values
Amin = Amid - dA/2
Amax = Amid + dA/2

R = [0]*9

R[0] = Rstar/(Amin - 1)
R[1] = 255*Rstar/(Amax - Amin)

for i in range(2,len(R)):
    R[i] = R[1]/(2**(i-1))

# Outputs

## Output in the most convenient unit, error code of less than 1 ohm, more than 1 giga ohm
for i,resistor in enumerate(R):
    print(("Resistor " + str(i)) + " is {:.0f} ohms.".format(resistor))

# Testing
intg = 0
for i in range(len(R)):
    intg = intg + 1/R[i]

RG = 1/intg
A = 1+(Rstar/RG)
print(A)

# Plot Recorded Data
Ru = [0]*9
y = [0]*256
for i in range(len(Ru)):
    Ru[i] = input("What is the value of resistor " + str(i) +" in ohms?")
    Ru[i] = int(Ru[i])

for i in range(256):
    intg = 0
    Rstar = 100*1000
    for n in range(len(Ru)):  
        intg = intg + 1/Ru[n]
    RGu = 1/intg
    y[i] = 1+(Rstar/RGu)

plt.figure(1)
plt.plot(range(256),y)
plt.xlabel('Gain Setting')
plt.ylabel('Gain')
plt.title('Gain vs Gain Setting')
plt.show()