mutable struct Node # Define Node structure
    num :: Int
    next :: Ref{Union{Node, Nothing}} # Create a Reference object that refers to a Node or to nothing (equivalent to NULL). 
end                                   # Ref() sort of acts as a pointer

linked_list = Ref{Union{Nothing, Node}}(nothing)

n = Node(5, Ref{Union{Nothing, Node}(nothing))
m = Node(7, Ref{Union{Nothing, Node}(nothing))
t = Node(4, Ref{Union{Nothing, Node}(nothing))

linked_list[] = n
print(linked_list)

linked_list[].next[] = m

print(linked_list)

l = linked_list

while !isnothing(l[])
    l[] = l[].next[]
end

l[].next[] = t

print(linked_list)
