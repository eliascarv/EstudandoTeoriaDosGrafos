using Graphs

# Teorema 10 (Euler). A soma dos graus dos vértices de um
# grafo é igual a duas vezes o número de arestas nesse grafo.
# Em símbolos: ∑ d(vᵢ) = 2|E|, vᵢ ∈ V

# V = {1, 2, 3}
sg = SimpleGraph(3)

# E = {(1, 3), (2, 3)}
add_edge!(sg, 1, 3)
add_edge!(sg, 2, 3)

# |E| = 2
ne(sg)

# ∑ d(vᵢ) = 4
sum(degree(sg))

# ∑ d(vᵢ) = 2|E|, vᵢ ∈ V
# true
sum(degree(sg)) == 2*ne(sg)
