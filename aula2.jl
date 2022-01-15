using Plots, GraphRecipes
using Graphs

# No ano 3000 será possível viajar entre os seguintes planetas:
# Terra–Mercúrio; Plutão–Vênus; Terra–Plutão; Plutão–Mercúrio; Mercúrio–Vênus; 
# Urano–Netuno; Netuno–Saturno; Saturno–Júpiter; Júpiter–Marte e Marte–Urano.
# Será possível viajar da Terra para Marte?

# Mercúrio = 1; Vênus = 2; Terra = 3; Marte = 4; Júpiter = 5
# Saturno = 6; Urano = 7; Netuno = 8; Plutão = 9

# sg = SimpleGraph(9)

# add_edge!(sg, 3, 1)
# add_edge!(sg, 9, 2)
# add_edge!(sg, 3, 9)
# add_edge!(sg, 9, 1)
# add_edge!(sg, 1, 2)
# add_edge!(sg, 7, 8)
# add_edge!(sg, 8, 6)
# add_edge!(sg, 6, 5)
# add_edge!(sg, 5, 4)
# add_edge!(sg, 4, 7)

# adjm = [
#     0 5 1  0 0 0  0 0 4
#     5 0 0  0 0 0  0 0 2
#     1 0 0  0 0 0  0 0 3
#     0 0 0  0 9 0 10 0 0
#     0 0 0  9 0 8  0 0 0
#     0 0 0  0 8 0  0 7 0
#     0 0 0 10 0 0  0 6 0
#     0 0 0  0 0 7  6 0 0
#     4 2 3  0 0 0  0 0 0
# ]
# sg = SimpleGraph(adjm)

# E = {(3, 1), (9, 2), (3, 9), (9, 1), (1, 2),
#      (7, 8), (8, 6), (6, 5), (5, 4), (4, 7)}
el = Edge.([
    (3, 1), (9, 2), (3, 9), (9, 1), (1, 2), 
    (7, 8), (8, 6), (6, 5), (5, 4), (4, 7)
])

# V = {1, 2, 3, 4, 5, 6, 7, 8, 9}
sg = SimpleGraph(el)

names = ["Me", "Ve", "Te", "Ma", "Ju", "Sa", "Ur", "Ne", "Pl"]
graphplot(sg, 
    method=:circular, 
    nodeshape=:circle, 
    nodesize=0.15, 
    names=names, 
    curves=false, 
    fontsize=10
)

savefig("aula2.png")
