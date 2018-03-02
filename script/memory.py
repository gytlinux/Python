#!/usr/bin/env python
import psutil

mem = psutil.virtual_memory()
print(int(round(mem.percent)))

