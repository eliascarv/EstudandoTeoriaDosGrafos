using Plots, GraphRecipes
using Graphs

# Se todos os vértices de um grafo com n vértices
# têm grau maior ou igual a (n − 1)/2, então esse
# grafo é conexo.

n = 5

# V = {1, 2, 3, 4, 5}
sg = SimpleGraph(n)

# E = {(1, 2), (2, 3), (3, 4), (4, 5), (5, 1)}
add_edge!(sg, 1, 2)
add_edge!(sg, 2, 3)
add_edge!(sg, 3, 4)
add_edge!(sg, 4, 5)
add_edge!(sg, 5, 1)

# d(vᵢ) ≥ (n − 1)/2, vᵢ ∈ V
# true
all(degree(sg) .≥ (n - 1) / 2)
is_connected(sg)

graphplot(sg, 
    method=:circular, 
    nodeshape=:circle, 
    nodesize=0.15, 
    fontsize=10,
    curves=false,
    names=1:n
)

savefig("aula10.png")
