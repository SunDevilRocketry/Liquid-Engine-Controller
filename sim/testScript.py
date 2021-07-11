#!/usr/bin/python3
# Testscript for ics.py module

Test`
import ics

buckConv = ics.buck('LM22672MRE-5.0/NOPB')
buckConv.calcL('LM22672MRE-5.0/NOPB')
print((buckConv.Lrecomended*1e6), ' uH')
