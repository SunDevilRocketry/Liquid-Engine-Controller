from syslog import LOG_LOCAL0
from PIL import Image,ImageTk
import numpy as np
from matplotlib import pyplot as plt

##### LOCAL VARIABLES ####
Rstar = 100000 #Ohms
GigaR = 1000000000 #Ohms
MegaR = 1000000 #Ohms
KiloR = 1000 #Ohms
RegaR = 1 #Ohms
Rn = 9 # Number of resistors
##### LOCAL VARIABLES ####

##### MAIN CODE: OUTPUT ####
# User inputs the desired mid gain/gain range
Amid = input("Enter the desired mid gain: ")
dA = input("Enter the desired gain range: ")

# Convert user input into a float number
Amid = float(Amid)
dA = float(dA)

# Error code for nonsense inputs
if Amid < 0 or dA < 0:
    print("Invalid Input")
    quit()

# Calculate min and max gain
Amin = Amid - dA/2
Amax = Amid + dA/2

# Calculating the resistor values
R = [0]*Rn
R[0] = Rstar/(Amin - 1)
R[1] = 255*Rstar/(Amax - Amin)
for i in range(2,len(R)):
    R[i] = R[1]/(2**(i-1))

# Array to store the units for the resistor
unit = [0]*Rn

# Output in the most convenient unit
for i,resistor in enumerate(R):
    if resistor > GigaR:
        print("Resistor required larger than 1 GigaOhm")
        quit()
    elif resistor > MegaR:
        resistor = resistor/1000000
        print(
             ("Resistor " + 
              str(i))     + 
              " is {:.6f} MOhms.".format(resistor)
             )
        unit[i] = 3
    elif resistor > KiloR:
        resistor = resistor/1000
        print(("Resistor " + str(i)) + " is {:.3f} kOhms.".format(resistor))
        unit[i] = 2
    elif resistor > RegaR:
        print(("Resistor " + str(i)) + " is {:.0f} Ohms.".format(resistor))
        unit[i] = 1
    else:
        print("Resistor required smaller than 1 Ohm")
        quit()

##### MAIN CODE: INPUT TO PLOT ####

# Acquire the actual resistor values
Ru = [0]*Rn
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

# Calculating the gain for all settings
for i in range(256):
    Rstar = 100000
    # Variable to store sums
    intg = 0
    # Converting gain setting to binary
    ib = bin(i)
    # Separate binary number to all its digits
    result = list(str(ib))
    # Add in 0's for binary numbers with fewer than 8 digits
    while len(result) < 10:
        result.insert(2,0)
    # Sum up the reciprocal of the resistor values for the resistors turned on for a particular setting
    for n in range(len(Ru)):
        # First resistor is always on
        if n == 0:
            intg = intg + 1/Ru[n]
        # Variable resistors on or off
        elif int(result[10-n]) == 1:  
            intg = intg + 1/(Ru[n])
    # Calculating the equivalent resistance of the circuit
    RGu = 1/intg
    # Calculating the gain
    y[i] = 1+(Rstar/RGu)

# Plotting the gain vs gain setting
plt.figure(1)
plt.plot(range(256),y)
plt.xlabel('Gain Setting')
plt.ylabel('Gain')
plt.title('Gain vs Gain Setting')
plt.show()
