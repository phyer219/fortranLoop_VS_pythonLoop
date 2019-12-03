'''
program  : fortranLoop
version  : 03-Dec-2019
author   : Zeqing Wang
purpose  : test the loop time and compare with Fortran
reference: 
'''
import time

a = 0
N = int(1e8) 

start = time.process_time()
for i in range(N):
    a = 1.0
end = time.process_time()

time = end - start
print("Time is", time)

f = open('./pythonLoopTime.dat', 'a')
f.seek(0)
f.truncate()
f.write('%.16f'%time)
f.close()


