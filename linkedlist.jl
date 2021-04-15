mutable struct Node # Define Node structure
    num :: Int
    next :: Union{Node, Nothing}# Ensure next field of Node accepts a null value (nothing) or another Node
end
    

n = Node(5, nothing)
m = Node(7, nothing)
t = Node(4, nothing)
n. next = m
m.next = t
linked_list = n
print(n)
