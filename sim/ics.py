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
            self.VIN = 40       # Normal Input Voltage (V)
            self.IOUT = 1       # Output Max Amperage (A)

        else: # Invalid Chip Selection
            print('Invalid buck converter selection when initializing a', 
                   self.__class__.__name__, 'class. Choose one of the ' \
                   ' options below: ')
            for option, chip in enumerate(self.chipOptions):
                print('   ', option+1, '.', chip)
                choice = input('Enter a selection: ')
            choice = getOption(choice, len(self.chipOptions))
            if (choice == 1):
                self.__init__('LM22672MRE-5.0/NOPB')
            
    # calcL -- Calculates the value of the power inductor based on ripple
    #          current considerations
    # Inputs: 
    #      -- chip: String containing the name of the buck converter chip
    #      -- printResults: boolean value which prints the output of the 
    #                       calculations to the console, doesnt print by 
    #                       default
    def calcL(self, chip, printResults = False):
    
        # Choose chip 
        if (chip == 'LM22672MRE-5.0/NOPB'):

            # Inductance Calculation From Datasheet
            self.Lrecomended = (self.VIN - self.VOUT)*self.VOUT/0.3
            self.Lrecomended /= self.IOUT*self.FreqSW*self.VIN

            # Resulting Output Ripple Current
            self.IoutRippleRecommended = (self.VIN - self.VOUT)*self.VOUT
            self.IoutRippleRecommended /= self.Lrecomended*self.FreqSW*self.VIN 

            # Resulting Output Peak Current 
            self.IoutPeakRecommended = self.IOUT + self.IoutRippleRecommended/2

            # Print Results
            if(printResults):
                print('\nInductor Recommended Specifications: ')
                print('________________________________________________________________________')
                print('Inductance: ', '{:.3f}'.format(self.Lrecomended*1e6), ' uH')
                print('Load Current: ', '{:.3f}'.format(self.IOUT), ' A')
                print('Ripple Current: ', '{:.3f}'.format(self.IoutRippleRecommended*1e3), ' mA') 
                print('Peak Current: ', '{:.3f}'.format(self.IoutPeakRecommended), ' A\n')  
 
        else: # Invalid Chip Selection
            print('Invalid buck converter selection when calculating' \
                  ' power inductor inductance. Choose one of the'  \
                  ' options below: ')
            for option, chip in enumerate(self.chipOptions):
                print('   ', option+1, '.', chip)
                choice = input('Enter a selection: ')
            choice = getOption(choice, len(self.chipOptions))
            if (choice == 1):
                self.calcL('LM22672MRE-5.0/NOPB')

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
            choice = getOption(choice, len(self.chipOptions))
            if (choice == 1):
                self.externalParams('LM22672MRE-5.0/NOPB')
