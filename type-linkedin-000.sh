#!/bin/bash
#
#
#
#
# push x close the window
clipboard=$(wl-paste)
sleep 0.1
# Salary: 1739, 1029
ydotool mousemove --absolute -x 1739 -y 1009
ydotool click 0xC0
# Add New Salary 1716, 278
ydotool mousemove --absolute -x 1716 -y 248 
ydotool click 0xC0
# Current Salary 1807, 328
ydotool mousemove --absolute -x 1807 -y 300 
ydotool click 0xC0
# Next 1805, 394
ydotool mousemove --absolute -x 1805 -y 354 
ydotool click 0xC0
# Yearly 1807, 328
ydotool mousemove --absolute -x 1807 -y 300
ydotool click 0xC0
# Next 1805, 394
ydotool mousemove --absolute -x 1805 -y 354 
ydotool click 0xC0
# Next 1805, 394
ydotool mousemove --absolute -x 1805 -y 354 
ydotool click 0xC0
# Fiat Dropdown 1622, 325
# ydotool mousemove --absolute -x 1622 -y 325 
# ydotool click 0xC0
# GBP 1624, 376
# ydotool mousemove --absolute -x 1625 -y 398 
# ydotool click 0xC0
# Click the input 1724, 333 
ydotool mousemove --absolute -x 1724 -y 302
ydotool click 0xC0
# Paste the content of clipboard
ydotool type $clipboard
ydotool type "000"
# Add Salary 1796, 389
ydotool mousemove --absolute -x 1805 -y 354 
ydotool click 0xC0
# press x to close window
# code 120
# ydotool type "x" 

