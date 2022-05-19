
testvariable = "Test"


😂 = "lol. emoji variabel"


⭕ = 10 * 2π

println(😂)

str = "Circle is $⭕"


println(str)

#variable with type
❤::String = "heart"

function 💢(ᛟ, ᛞ)
    ᛟ + ᛞ
end

💢(ᛟ, ᛞ) = ᛟ + ᛞ

# Pass to anonymous function
💢 = (ᛟ, ᛞ) -> ᛟ + ᛞ

callme(💢)

fun(x) = print('test1')

fun(x::Float64) = print('floats')

fun(x::Int) = print('int')

# If number is inserted then fun(x) will print int
fun(13)


# Struct

struct Person 
    name::String
    age::Int
    killstreak::Int
    underage::Bool
end

array1D = [1, 2, 3, 4]
array2D = [1 2; 3 4]


matrix = zeros(Int8, 3, 3)
# 3x3 Matrix{Int8}:
# 0 0 0
# 0 0 0
# 0 0 0


## Asyncronous computing with task model

t = @task begin; sleep(5); println("done"); end


r = remotecall(rand, 2, 2, 2)

s = @spawnat 2 2 .+ fetch(r)

fetch(s)
