include("module.jl")
import .Example: square, scale, add, sub, pow

using DelimitedFiles

println("Random string generator")
print("Input a list or matrix: ")
matrix = readdlm(IOBuffer(readline()))
println("")
print("Input a number: ")
num = parse(Int64, readline())
print("Choose an option: 1, 2, or 3: ")
option = readline()
println("")


if(option == "1")

    output = matrix |> scale(num) |> add(num)
    println(output)
elseif(option == "2")

    output = matrix |> pow(num) |> sub(num) 
    println(output)

elseif(option == "3") 

    output = matrix |> pow(num) |> scale(1/num) 
    println(output)

else
    println("That wasn't an option, input an option: ")
    option = readline()
end





