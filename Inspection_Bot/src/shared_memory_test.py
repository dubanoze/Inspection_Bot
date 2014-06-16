#!/usr/bin/env python



from multiprocessing import Process, Value, Array

def f(n, a):
    n.value = 3.1415927
    for i in range(len(a)):
        a[i] = -a[i]

def t(n, a):
    n.value = 7
    for i in range(len(a)):
        a[i] = -a[i]



if __name__ == '__main__':
    num = Value('d', 0.0)
    arr = Array('i', range(10))

    p = Process(target=f, args=(num, arr))
    p.start()
    p.join()

    print num.value
    print arr[:]
    
    
    j = Process(target=t, args=(num, arr))
    j.start()
    j.join()
    print num.value
    print arr[:]
