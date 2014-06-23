import re
import math
import random

import matplotlib
import matplotlib.pyplot as plt
import random
import time
import itertools
#from pygraph.classes.graph import graph
#from pygraph.classes.digraph import digraph
#from pygraph.algorithms.searching import breadth_first_search
#from pygraph.readwrite.dot import write
#from pygraph import * 
#from pygraph.algorithms.minmax import * 

import matplotlib
import matplotlib.pyplot as plt
import random
import time
import itertools

#http://nbviewer.ipython.org/url/norvig.com/ipython/TSPv3.ipynb
City = complex # Constructor for new cities, e.g. City(300, 400)

def distance(A, B): 
    "The distance between two points."
    return abs(A - B)

def greedy_TSP(cities, start=None):
    "At each step, visit the nearest neighbor that is still unvisited."
    if start is None: start = first(cities)
    tour = [start]
    unvisited = cities - {start}
    while unvisited:
        C = nearest_neighbor(tour[-1], unvisited)
        tour.append(C)
        unvisited.remove(C)
    return tour

def nearest_neighbor(A, cities):
    "Find the city in cities that is nearest to city A."
    return min(cities, key=lambda x: distance(x, A))

def exact_TSP(cities):
    "Generate all possible tours of the cities and choose the shortest one."
    return shortest(alltours(cities))

def shortest(tours): 
    "Return the tour with the minimum total distance."
    return min(tours, key=total_distance)

def all_greedy_TSP(cities):
    "Try the greedy algorithm from each of the starting cities; return the shortest tour."
    return shortest(greedy_TSP(cities, start=c) for c in cities)

def total_distance(tour):
    "The total distance between each pair of consecutive cities in the tour."
    return sum(distance(tour[i], tour[i-1]) for i in range(len(tour)))

def alltours(cities):
    "Return a list of tours, each a permutation of cities, but each one starting with the same city."
    start = first(cities)
    return [[start] + list(tour)
            for tour in itertools.permutations(cities - {start})]

def first(collection):
    "Start iterating over collection, and return the first element."
    for x in collection: return x

def Cities(n):
    "Make a set of n cities, each with random coordinates."
    return set(City(random.randrange(10, 890), random.randrange(10, 590)) for c in range(n))

# Let's make some standard sets of cities of various sizes.
# We'll set the random seed so that these sets are the same every time we run this notebook.
def plot_tour(algorithm, cities):
    "Apply a TSP algorithm to cities, and plot the resulting tour."
    # Find the solution and time how long it takes
    t0 = time.clock()
    tour = algorithm(cities)
    t1 = time.clock()
    # Plot the tour as blue lines between blue circles, and the starting city as a red square.
    plotline(list(tour) + [tour[0]])
    plotline([tour[0]], 'rs')
    plt.show()
    print("{} city tour; total distance = {:.1f}; time = {:.3f} secs for {}".format(
          len(tour), total_distance(tour), t1-t0, algorithm.__name__))
    return tour
    


def plotline(points, style='bo-'):
    "Plot a list of points (complex numbers) in the 2-D plane."
    X, Y = XY(points)
    plt.plot(X, Y, style)
    
def XY(points):
    "Given a list of points, return two lists: X coordinates, and Y coordinates."
    return [p.real for p in points], [p.imag for p in points]

def calc_total_distance(X_list,Y_list):
    total_length = 0
    for i in range(0,len(X_list)-1):
        total_length =total_length + math.hypot(X_list[i]-X_list[i+1], Y_list[i]-Y_list[i+1])
    return total_length

def greedy_exact_end_TSP(cities, start=None, end_size=8):
    """At each step, visit the nearest neighbor that is still unvisited until
    there are k_end cities left; then choose the best of all possible endings."""   
    if start is None: start = first(cities)
    tour = [start]
    unvisited = cities - {start}
    # Use greedy algorithm for all but the last end_size cities
    while len(unvisited) > end_size:
        C = nearest_neighbor(tour[-1], unvisited)
        tour.append(C)
        unvisited.remove(C)
    # Consider all permutations of possible ends to the tour, and choose the best one.  
    # (But to make things faster, omit the middle of the tour.)
    ends = map(list, itertools.permutations(unvisited))
    best = shortest([tour[0], tour[-1]] + end for end in ends)
    return tour + best[2:]

def greedy_bi_TSP(cities, start_size=12, end_size=6):
    "At each step, visit the nearest neighbor that is still unvisited."
    starts = random.sample(cities, min(len(cities), start_size))
    return shortest(greedy_exact_end_TSP(cities, start, end_size) 
                    for start in starts)

def random_shuffle_vectors(X_list,Y_list):
    index_s=range(0,len(X_list))
    random.shuffle(index_s)
    X_list = [X_list[i] for i in index_s]
    Y_list = [Y_list[i] for i in index_s]
    return [X_list,Y_list]

if __name__ == '__main__':
    x_offset = 27.10
    y_offset = 11.11
    
    X_list=[]
    Y_list=[]
    coordinates = []
    # Graph creation

    f = open("../PCB_Information/vectors.txt", "r")
    for line in f:
        vec=re.findall(r'\d+.\d+', line)
        x=vec[0]
        y=vec[1]
        X_list.append(float(x))
        Y_list.append(float(y))
        coordinates.append(City(float(x),float(y)))
        #gr.add_edge((float(x),float(y)))
        #edges.append((float(x),float(y)))
    
    f.close()
    
    print X_list
    print Y_list
    
    shortest_distance = calc_total_distance(X_list,Y_list)
    
    print "initial shortest distance" + str(shortest_distance)
    coordinates = set(coordinates)

    tour1=plot_tour(greedy_TSP, coordinates)
    tour2=plot_tour(all_greedy_TSP, coordinates)
    tour3=plot_tour(greedy_bi_TSP, coordinates)
    
    best_tour=shortest([tour1,tour2,tour3])
    
    f = open("./best_found_tour.txt", "w")
    for stop in best_tour:
         coordinate_string= "{0:f}    {1:f}\n".format(float(stop.real),float(stop.imag))
         f.write(coordinate_string)
    f.close()
    #f = open("./best_found_tour.txt", "w")

    
