### ics.py -- Python module containing IC information from the datasheet
###           Includes Calculations for determination of external component  
###           values
### Author: Colton Acosta, cacost12@asu.edu
### Date: 7/10/2021

# Libraries
import sys
import numpy as np

# getOption -- Recursively ask the user for a new selection
#              until a valid option is entered
# Inputs: 
#         choice -- previous selection
#         options -- number of valid options
# Output:
#         choice -- Valid selection
def getOption(choice, options):

    # User enters a number
    try:     
        choice = int(choice)
        if (choice >= 1 and choice <= options):
            return(choice)
        else: 
            choice = input('Invalid selection. Try again: ')
            getOption(choice, options)
    # User enters a non-number
    except ValueError:
        choice = input('Invalid selection. Try again: ')
        getOption(choice, options)
    

# buck -- 5V Buck converter 
class buck:

    # Define Electrical Characteristics and select chip
    def __init__(self, chip):
        # Supported Chips: 
        #       1. LM22672MRE-5.0/NOPB
        self.chipOptions = ['LM22672MRE-5.0/NOPB'];

        # Choose chip and set parameters
        if (chip == 'LM22672MRE-5.0/NOPB'):
            self.maxVoltages = {'VIN': 43,    # Max Pin voltages in V 
                                 'EN': 6,
                                 'SS': 7,
                                 'RT/SYNC': 7,
                                 'SW': 'VIN'}
            self.FreqSW = 500e3   # Switching Frequency (Hz)
            self.VOUT = 5       # Output Voltage (V)
            self.IOUT = 1       # Output Max Amperage (A)

        else: # Invalid Chip Selection
            print('Invalid buck converter selection when initializing a', 
                   self.__class__.__name__, 'class. Choose one of the ' \
                   ' options below: ')
            for option, chip in enumerate(self.chipOptions):
                print('   ', option+1, '.', chip)
                choice = input('Enter a selection: ')
            getOption(choice, len(self.chipOptions))
            
    # calcL -- Calculates the value of the power inductor based on ripple
    #          current considerations
    def calcL(self, chip):
    
        # Choose chip 
        if (chip == 'LM22672MRE-5.0/NOPB'):
            # External component list unpacking
 
        else: # Invalid Chip Selection
            print('Invalid buck converter selection when calculating' \
                  ' power inductor inductance. Choose one of the'  \
                  ' options below: ')
            for option, chip in enumerate(self.chipOptions):
                print('   ', option+1, '.', chip)
                choice = input('Enter a selection: ')
            getOption(choice, len(self.chipOptions))

    # Defines all external component values 
    # Inputs: 
    #         params -- list of input parameters, defined for each chip
    # Outputs:
    #          None 
    def externalParams(self, params):
        
        # Choose chip and define external component values
        if (chip == 'LM22672MRE-5.0/NOPB'):
            # External component list unpacking
            self.C_SS = params[0]     # Soft start capacitance (SS pin)
            self.C_BOOT = params[1]   # Boot-strap supply capacitanc, cap 
                                      # is between BOOT and SW pins
            self.L = params[2]        # Power Inductor
            
 
        else: # Invalid Chip Selection
            print('Invalid buck converter selection when defining' \
                  ' external component values. Choose one of the'  \
                  ' options below: ')
            for option, chip in enumerate(self.chipOptions):
                print('   ', option+1, '.', chip)
                choice = input('Enter a selection: ')
            getOption(choice, len(self.chipOptions))
