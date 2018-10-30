︠e98d2ba5-fa98-413f-a7f5-02ca9d09b8f5i︠
%md
<div align='center'>****<font size=5>Week 5
    lab</font>****</div><br>
You can work in a group of 1-3 students.  Every student must fill in a CoCalc worksheet which states the names of the other students in the group as well as which student's worksheet should be graded.  <br><br>
There are three main goals of the lab this week.  1.  Write a function which implements our algorithm for finding an integer a as specified in the Chinese Remainder Theorem.  2.  Write a function which implements the collision algorithm for solving the discrete log problem.  3.  Use the Pohlig-Hellman algorithm and the previous two functions to break the Diffie-Hellman key exchange given below.
︡35033874-c195-4da4-88dd-3c02b758cf72︡{"done":true,"md":"<div align='center'>****<font size=5>Week 5\n    lab</font>****</div><br>\nYou can work in a group of 1-3 students.  Every student must fill in a CoCalc worksheet which states the names of the other students in the group as well as which student's worksheet should be graded.  <br><br>\nThere are three main goals of the lab this week.  1.  Write a function which implements our algorithm for finding an integer a as specified in the Chinese Remainder Theorem.  2.  Write a function which implements the collision algorithm for solving the discrete log problem.  3.  Use the Pohlig-Hellman algorithm and the previous two functions to break the Diffie-Hellman key exchange given below."}
︠3f6fec6a-229f-483f-aa40-002b0f27da48i︠
%md
Put your name here: Daniel Ngu <br>
︡25407ea8-d8c7-4f68-93f7-f4fab1ec9b43︡{"done":true,"md":"Put your name here: Daniel Ngu <br>"}
︠38ed1306-7784-48fb-a86b-4f4223056189s︠
# The eventual goal of this lab is to decrypt the below message by using the Pohlig Hellman
# algorithm to find the secret exponent b.  (Finding the secret exponent a is probably easier, so
# in this lab you are required to find the secret exponent b.)
# Message:
p = 15555550000019
g = 3
A = 11718736882940
B = 7506901779221
X = "YDPIEHOVWQFDSVNJTCGTTTMZVFKFYTQSARZUFLCNMIUGNFFLCPDNMRQWAQNVFTDWPCQRAFBGMGGCOIASKEF"
︡bd1c0d12-92e0-404f-8ad1-12fa275ef14c︡{"done":true}︡
︠a5ff1bd8-d8c2-4ab0-bb99-fea465abcc4ds︠
# Problem 1.  Replace ??? below so that this implements our algorithm related to the Chinese Remainder Theorem.
# For example, if you run custom_crt([2,3,4],[3,5,8]), you should get 68, because 68 is the smallest
# non-negative integer which is congruent to 2 mod 3, to 3 mod 5, and to 4 mod 8.
# Test your function in a separate cell.
import numpy
def custom_crt(r_list, m_list):
    m_prod = numpy.prod(m_list)
    a = 0;
    for i in range(0,len(r_list)):
        a += r_list[i] * inverse_mod(m_prod/m_list[i],m_list[i]) * m_prod/m_list[i]
    a = a%m_prod
    return a
︡458ff029-4177-4e5f-8bb2-d715d27d6c55︡{"done":true}︡
︠b3ffcb23-0d4a-4498-9993-c685718e405bs︠
custom_crt([2,3,4],[3,5,8])
custom_crt([3,5,7],[4,21,25])
︡7c6b6a8f-088b-45ff-b11d-7c7dd964b40a︡{"stdout":"68\n"}︡{"stdout":"1307\n"}︡{"done":true}︡
︠20f28503-ec13-4e0c-b299-bc2955ebc386s︠
# The only thing you don't know for automating the collision algorithm,
# is once you take the intersection of your babystep and giantstep lists,
# how do you get an element out of it.
#my_intersection = set([1,3,5]).intersection(set([10,5,7,5]))
#my_intersection[0] # does not work, because the intersection is a set, and
# sets are unordered, so the first element of a set doesn't make sense.
# Instead use the method .pop() to get an element out of the intersection.
︡1c4d800d-52da-4ce4-82a0-9aa3453ca0e2︡{"done":true}︡
︠a97fc854-9e10-48cb-b756-4d3d8b2db8dfs︠
# Problem 2.  Fill in the following so that it implements the collision algorithm to
# solve the discrete logarithm of h to the base g in Z/mZ
def collision(g,h,m):
    # Use the suggestions from the homework.
    babylist = []
    giantlist = []
    n = ceil(pow(Integers(m)(g).multiplicative_order(),.5))
    
    for i in range(0,n):
        babylist.append(pow(g,i,m))
        giantlist.append(h*(pow(g,(-i*n),m)))
    
    intersectval = set(babylist).intersection(set(giantlist)).pop()
    babyindex = babylist.index(intersectval)
    giantindex = giantlist.index(intersectval)
    power = babyindex + giantindex*n
    return power
︡4ec0fe4c-11b2-48df-b2f8-69a8b53e51f6︡{"done":true}︡
︠550a99b9-0730-4474-8237-5011b5a67217s︠
# Test your collision algorithm: collision(3,3563,4010) should return 117.
collision(3,3563,4010)
︡5606ef5b-f21e-4c59-bc22-4768f44c498b︡{"stdout":"117\n"}︡{"done":true}︡
︠a77c0dd5-d346-432d-90e5-3e451d41fe73s︠
# Problem 3.  Use the Pohlig-Hellman algorithm to find the secret exponent b.
# Once you have that, use it to decrypt the secret message X.
# You will have to attach Week5-StarterCode.sage like usual to use our decrypt function.
# If you do this correctly, you will have to use your collision function 4 total times
# 3 times with a prime and 1 time with a prime power as your modulus.  Then you will have
# to apply your Chinese Remainder Theorem function.  At the end you will use
# deciphervigenere(X,k.digits(26))
︡5b0a214c-0e7c-44e5-9a92-ff5f5b2a942b︡{"done":true}︡
︠07aa8a99-7071-4222-9763-63a4ebb7555cs︠
attach("Week5-StarterCode.sage")
︡bc21fd84-486c-4719-b9b6-53a575f6f05a︡{"done":true}︡
︠0581fb4c-efcf-4808-9a74-62c4c3b65c00︠
%md
Pohlig-Hellman
︡277822c8-919b-4bef-a408-181d1f52ea92︡{"done":true,"md":"Pohlig-Hellman"}
︠c8091196-32a0-4d68-b6f9-02a382a381b9s︠
multorder = Integers(p)(g).multiplicative_order()
factorlist = (factor(multorder))
factors, powers = map(list,zip(*factorlist))
factors = [7^3, 163, 307, 453143]
g_list = []
h_list = []
for i in range(0, len(factors)):
    g_list.append(pow(g, multorder/factors[i], p))
    h_list.append(pow(B, multorder/factors[i], p))
factors
g_list
h_list
︡3d4b6cb3-6fe0-4865-b478-78d35b1e339d︡{"stdout":"[343, 163, 307, 453143]\n"}︡{"stdout":"[248166271031, 7885645268917, 3465871548810, 6609024124658]\n"}︡{"stdout":"[9431680517093, 12991173910081, 630165607543, 4456049042226]\n"}︡{"done":true}︡
︠3da9b17b-84b9-4722-9d71-3c4fa11475fds︠
r_list = []
for i in range(0,len(g_list)):
    r_list.append(collision(g_list[i],h_list[i],p))
r_list
︡0b628255-aac7-4827-a7d8-b260daf126e0︡{"stdout":"[271, 121, 89, 45389]\n"}︡{"done":true}︡
︠5f2d5754-a2fc-40d6-9874-319e21be0e60s︠
b = custom_crt(r_list, factors)
b
︡2676007d-1fa4-4e53-b4ca-274f2152ba7e︡{"stdout":"56235121\n"}︡{"done":true}︡
︠fce359de-a32d-4356-b691-94faf7bc40c3s︠
pow(g,b,p)
B
︡f1111a36-9e05-4e2c-a02c-85be924e4cbe︡{"stdout":"7506901779221\n"}︡{"stdout":"7506901779221\n"}︡{"done":true}︡
︠515d6026-ba8b-44f1-929f-b70ccef06f94s︠
k = pow(A,b,p)
k
︡b369cc84-d5c9-48b0-a3e6-41cbd6f75a79︡{"stdout":"10477431105842\n"}︡{"done":true}︡
︠fe5a7b30-5a7e-41a1-b29b-77bfd17604b1s︠
deciphervigenere(X,10477431105842.digits(26))
︡06630e2d-a22c-4daf-bdca-bf3e71565c13︡{"stdout":"'moderncryptographyisheavilybasedonmathematicaltheoryandcomputersciencepracticecrypt'\n"}
︠025a01b3-c557-4b53-8a11-d6546708a571︠
%md
Function for Pohlig-Hellman:
︡ad7932a5-a6c0-4b8f-a2da-c43430c83cac︡{"done":true,"md":"Function for Pohlig-Hellman:"}
︠5e9ebad3-8753-4959-ba05-3d9a734bef58s︠
def pohlighellman(g,h,m):
    multorder = Integers(m)(g).multiplicative_order()
    factorlist = list(factor(multorder))
    factors, powers = map(list,zip(*factorlist))
    factors = [factors[i]^powers[i] for i in range(0,len(factors))]
    r_list = []
    g_list = []
    h_list = []
    for i in range(0, len(factors)):
        g_list.append(pow(g, multorder/factors[i], m))
        h_list.append(pow(h, multorder/factors[i], m))
    for i in range(0,len(g_list)):
        r_list.append(collision(g_list[i],h_list[i],m))
    return custom_crt(r_list, factors)
︡4622803c-f8ee-455d-a7ae-5b12dbdbfe44︡{"done":true}︡
︠920e8859-ea96-4b73-bcc6-1c010f4ced7es︠
k = pow(A,pohlighellman(g,B,p),p)
k
︡7d2ccc7d-2ca0-4f14-b448-71540560efc3︡{"stdout":"10477431105842\n"}︡{"done":true}︡
︠3802de03-2421-460c-9797-f5e6a5c280ccs︠
deciphervigenere(X,10477431105842.digits(26))
︡62d8078a-ee0b-4408-8752-9069ecfa6cdd︡
︠1f23035d-b925-47e7-ba43-b3fcfe0b2922︠









