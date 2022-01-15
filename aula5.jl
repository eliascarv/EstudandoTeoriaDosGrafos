using Plots, GraphRecipes
using Graphs

# a = 1, b = 2, c = 3, d = 4, e = 5

## Graph 1
# E = {(1, 5), (2, 3), (2, 5), (3, 4), (3, 5), (4, 5)}
el1 = Edge.([
    (1, 5), (2, 3), (2, 5), (3, 4), (3, 5), (4, 5)
])

# V = {1, 2, 3, 4, 5}
sg1 = SimpleGraph(el1)

degree(sg1, 1) # d(1) = 1
degree(sg1, 2) # d(2) = 2
degree(sg1, 3) # d(3) = 3
degree(sg1, 4) # d(4) = 2
degree(sg1, 5) # d(5) = 4

graphplot(sg1, 
    nodeshape=:circle, 
    nodesize=0.15, 
    fontsize=10,
    curves=false,
    names=1:5
)

savefig("aula5_g1.png")

## Graph 2
# E = {(1, 2), (2, 3), (2, 5), (3, 4), (3, 5)}
el2 = Edge.([
    (1, 2), (2, 3), (2, 5), (3, 4), (3, 5)
])

# V = {1, 2, 3, 4, 5}
sg2 = SimpleGraph(el2)

degree(sg2, 1) # d(1) = 1
degree(sg2, 2) # d(2) = 3
degree(sg2, 3) # d(3) = 3
degree(sg2, 4) # d(4) = 1
degree(sg2, 5) # d(5) = 2

graphplot(sg2,  
    nodeshape=:circle, 
    nodesize=0.15, 
    fontsize=10,
    curves=false,
    names=1:5
)

savefig("aula5_g2.png")
