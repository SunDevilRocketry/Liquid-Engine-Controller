from syslog import LOG_LOCAL0
from PIL import Image,ImageTk
import numpy as np
from matplotlib import pyplot as plt

##### Local Variables ####

#### 


# User Inputs
Amid = input("Enter the desired mid gain: ")
Amid = int(Amid)
dA = input("Enter the desired gain range: ")
dA = int(dA)

if Amid < 0 or dA < 0:
    print("Invalid Input")
    quit()

# Constants
Rstar = 100000 #Ohms

# Calculated Values
Amin = Amid - dA/2
Amax = Amid + dA/2

R = [0]*9

R[0] = Rstar/(Amin - 1)
R[1] = 255*Rstar/(Amax - Amin)

for i in range(2,len(R)):
    R[i] = R[1]/(2**(i-1))

# Outputs

unit = [0]*9

## Output in the most convenient unit
for i,resistor in enumerate(R):
    if resistor > 1000000000:
        print("Resistor required larger than 1 GigaOhm")
        quit()
    elif resistor > 1000000:
        resistor = resistor/1000000
        print(("Resistor " + str(i)) + " is {:.6f} MOhms.".format(resistor))
        unit[i] = 3
    elif resistor > 1000:
        resistor = resistor/1000
        print(("Resistor " + str(i)) + " is {:.3f} kOhms.".format(resistor))
        unit[i] = 2
    elif resistor > 1:
        print(("Resistor " + str(i)) + " is {:.0f} Ohms.".format(resistor))
        unit[i] = 1
    else:
        print("Resistor required smaller than 1 Ohm")
        quit()



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
    if unit[i] == 3:
        Ru[i] = input("What is the value of resistor " + str(i) +" in MOhms?")
        Ru[i] = float(Ru[i])*1000000
    elif unit[i] == 2:
        Ru[i] = input("What is the value of resistor " + str(i) +" in kOhms?")
        Ru[i] = float(Ru[i])*1000
    elif unit[i] == 1:
        Ru[i] = input("What is the value of resistor " + str(i) +" in Ohms?")
        Ru[i] = float(Ru[i])

for i in range(256):
    intg = 0
    Rstar = 100000
    ib = bin(i)
    result = list(str(ib))
    while len(result) < 10:
        result.insert(2,0)

    for n in range(len(Ru)):
        if n == 0:
            intg = intg + 1/Ru[n]
        elif int(result[10-n]) == 1:  
            intg = intg + 1/(Ru[n])
    RGu = 1/intg
    y[i] = 1+(Rstar/RGu)

plt.figure(1)
plt.plot(range(256),y)
plt.xlabel('Gain Setting')
plt.ylabel('Gain')
plt.title('Gain vs Gain Setting')
plt.show()