using Plots, GraphRecipes
using Graphs

# E = {(1, 2), (1, 5), (1, 8), (2, 4), (2, 7), (3, 6), 
#      (3, 9), (4, 5), (4, 8), (5, 7), (6, 9), (7, 8)}
nums = 1:9
el = Vector{Edge{Int}}()
for x in nums
    for y in nums[x:end]
        if rem(10x + y, 3) == 0 && x ≠ y
            push!(el, Edge(x, y))
        end
    end
end

# V = {1, 2, 3, 4, 5, 6, 7, 8, 9}
sg = SimpleGraph(el)

# el = Edge.([
#     (x, y) for x in nums for y in nums[x:end] if (10x + y) % 3 == 0 && x ≠ y
# ])
# sg = SimpleGraph(el)

graphplot(sg,  
    nodeshape=:circle, 
    nodesize=0.15, 
    fontsize=10,
    curves=false,
    names=nums
)

savefig("aula3.png")
