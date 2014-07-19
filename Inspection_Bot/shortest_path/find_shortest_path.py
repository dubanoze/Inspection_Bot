from traveling_salesman_support_functions import *

if __name__ == '__main__':
    #x_offset = 27.10
    #y_offset = 11.11
    
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

    #tour1=plot_tour(greedy_TSP, coordinates)
    
    #tour3=plot_tour(greedy_bi_TSP, coordinates)
    
    #best_tour=shortest([tour1,tour2,tour3])
    best_tour=all_greedy_TSP(coordinates)
    f = open("./best_found_tour.txt", "w")
    for stop in best_tour:
         coordinate_string= "{0:f}    {1:f}\n".format(float(stop.real),float(stop.imag))
         f.write(coordinate_string)
    f.close()
    
    plot_tour(all_greedy_TSP, coordinates)
    plot_tour(original_TSP, coordinates)
    #f = open("./best_found_tour.txt", "w")

    
