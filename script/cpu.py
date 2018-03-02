#!/usr/bin/env python

import psutil
cpustat = int(psutil.cpu_percent(1))
print(cpustat)
