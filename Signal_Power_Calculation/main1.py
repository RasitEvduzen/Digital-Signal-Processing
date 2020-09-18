#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
AUTHOR:  Rasit EVDUZEN
CONTACT: r.evduzen@hotmail.com
SINCE: Fri Jun 26 17:07:23 2020
VERSION: 0.1
"""

import numpy as np
import math  
import matplotlib.pyplot as plt 

N = 10;  # Simulation Time
y = np.zeros((1,N))
time = np.arange(1,N);
x = 1j*(np.pi/6)*time
y = math.exp(x)

## PLOT DATA ##
plt.plot(y,time, color = 'red', marker = "o") 
plt.title("numpy.exp()") 
plt.xlabel("X") 
plt.ylabel("Y") 
plt.show()   