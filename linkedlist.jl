mutable struct Node # Define Node structure
  num :: Int
  next :: Union{Node, Nothing}# Ensure next field of Node accepts a null value (nothing) or another Node
end

mutable struct Linkedlist # Define a linked-list
  n :: Union{Node, Nothing}# Ensure linked-list accepts nothing value or a Node
end

function addNode2End!(l :: Linkedlist, m :: Node) # Define function to add a Node to the end of a linked-list, taking a linked list and a node as parameters
  if isnothing(l.n) # if linked-list contains value of nothing, then assign value of node m to node n
    l.n = m
    else # Otherwise, for as long as the next field of the node refers to another node, move the next node till next field value is nothing
    while !(isnothing(l.n.next))
      l.n = l.n.next
    end
    l.n = m # When node n value is nothing, assign it the value of node m
  end
end

n = Node(5, nothing)
ll = Linkedlist(nothing)
m = Node(7, nothing)

addNode2End!(ll, n)
addNode2End!(ll, m)

print(ll)
