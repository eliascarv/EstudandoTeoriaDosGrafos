using Plots, GraphRecipes
using Graphs

# V = {1, 2, 3}
sg = SimpleGraph(3)

# E = {(1, 2), (1, 3)}
add_edge!(sg, 1, 2)
add_edge!(sg, 1, 3)

graphplot(sg, names=1:3, nodeshape=:circle, fontsize=10)

savefig("aula1.png")
