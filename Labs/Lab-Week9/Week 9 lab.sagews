︠e98d2ba5-fa98-413f-a7f5-02ca9d09b8f5i︠
%md
<div align='center'>****<font size=5>Week 9
    lab</font>****</div><br>
You can work in a group of 1-3 students.  Every student must fill in a CoCalc worksheet which states the names of the other students in the group as well as which student's worksheet should be graded.  <br><br>
You have been hired by an evil corporation to help them generate an RSA key.  Because you don't like the evil corporation, you are going to make the modulus $N$ vulnerable to Pollard's $p-1$ factorization algorithm.
︡35033874-c195-4da4-88dd-3c02b758cf72︡{"done":true,"md":"<div align='center'>****<font size=5>Week 9\n    lab</font>****</div><br>\nYou can work in a group of 1-3 students.  Every student must fill in a CoCalc worksheet which states the names of the other students in the group as well as which student's worksheet should be graded.  <br><br>\nYou have been hired by an evil corporation to help them generate an RSA key.  Because you don't like the evil corporation, you are going to make the modulus $N$ vulnerable to Pollard's $p-1$ factorization algorithm."}
︠3f6fec6a-229f-483f-aa40-002b0f27da48︠
%md
Put your name here: Daniel Ngu <br>
Who else is in your group (if anyone):<br>
Whose CoCalc worksheet from your group should I grade?<br>
︡25407ea8-d8c7-4f68-93f7-f4fab1ec9b43︡{"done":true,"md":"Put your name here: Daniel Ngu <br>\nWho else is in your group (if anyone):<br>\nWhose CoCalc worksheet from your group should I grade?<br>"}
︠5a6ac52d-9787-4d88-9590-45d3a4b7c233s︠
# We're going to need to generate lots of random primes in this lab.
# For example, the following chooses a random prime less than a thousand
random_prime(1000)
# and the following chooses a random 10 digit prime
random_prime(10^10,lbound = 10^9)
︡ace9aca1-9ff6-416f-9966-fb424eb4160f︡{"stdout":"197\n"}︡{"stdout":"8348507887\n"}︡{"done":true}︡
︠7b803c78-e788-4db5-858f-c304a5ae2b8bs︠
is_prime(89)
is_prime(90)
︡0a958633-f8b8-4aeb-8aac-fac641996fb0︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}︡
︠ee6014c4-4f80-4c26-99f4-3ae81708190es︠
# Use this cell to generate a prime p with at least 100 digits such that p-1 is smooth.
# To get you started, the following produces a number a which is smooth.
# Put this into a while loop, which repeats until you find a prime.
# The "print" line is there to give a reality check of what the number a looks like.
# Don't print hundreds of numbers to the screen; just print the final number p.
a=-1
while not is_prime(a+1):
    a = 2
    while a < 10^99:
        a = a*random_prime(10^6);
print a+1
︡0c102314-6814-469e-b845-dd5410473898︡{"stdout":"3731537362336530987302277274173525526721670248698786005321097157241675818955801934924676009308082699\n"}︡{"done":true}︡
︠34aff1fd-ac0a-4c0e-b4d0-2949b6a4fc64s︠
p = 3731537362336530987302277274173525526721670248698786005321097157241675818955801934924676009308082699
is_prime(p)
︡49e5c516-dff1-4786-a2cc-ba3c9c512d91︡{"stdout":"True\n"}︡{"done":true}︡
︠80456945-6e95-430a-a7fa-55d1f5ef63e5s︠
# Use this cell to generate a prime q of at least 80 digits and such that q - 1 = 2*r, where r is a prime.
# Suggestion: Choose a random prime r of an appropriate size.  Then check to see if the 
# corresponding q is prime.  Repeat this process as many times as necessary using a while loop.
# Print the final number q to the screen.
a=-1
while not is_prime(a):
    a = 2
    b = random_prime(10^82,lbound = 10^80)
    a = (2 * b) + 1
print a
︡a7ca7e41-4bf3-46d1-a526-178810c00b34︡{"stdout":"17050562198157336518259784702683196989877358463126871026885828667664106783644725859\n"}︡{"done":true}︡
︠73d1d251-4976-45cd-a1b1-3434dc512b18s︠
q=17050562198157336518259784702683196989877358463126871026885828667664106783644725859
is_prime(q)
r=int((q-1)/2)
is_prime(r)
︡c04f8c86-b1b2-4d17-9a47-5f24b1338c9f︡{"stdout":"True"}︡{"stdout":"\n"}︡{"stdout":"True\n"}︡{"done":true}︡
︠35cd8e27-9825-4b52-a99e-355ed158e4ces︠
# Use this cell to define N = p*q.  Post N to Piazza.  Don't reply to another student's post; just create your own Note.
N=p*q
N
︡0a5d9cac-6b2b-4246-a2a4-4adbcc8ba067︡{"stdout":"63624809891266991302898157344304675377910847190186014487494920027251846099598871784668262866157429175456397967646586971962307617971774096401105689011047480967974930528692930755813441\n"}︡{"done":true}︡
︠4011cc9b-2a72-4bba-8379-331e27e765ccs︠
# Choose another group's N from Piazza.
# Use the following strategy to factor N.
# Remember, it should eventually happen that g^(m!) is 1 mod p but is not 1 mod q.
# To make the procedure more efficient, we don't compute the gcd for every power of g,
# but instead we compute it for every hundredth power of g.
N = 188101065645171381505912699170711360441949254371595151015797991007560792148074523626155424049122619538590175124010770927696873106177292107986666418970166263827013927564526101816042579984755293 # the number you chose from Piazza
g = 2
i = 1
p = 0
jump = 100
while gcd(g-1,N) == 1:
    for j in range(i,i+jump):
        g = pow(g,j,N)
    i = i + jump
print (gcd(g-1,N))
p = int(gcd(g-1,N))
# Now define p to be a prime factor of N.
︡e639e84f-8c01-479e-b5a7-5ff9c63416eb︡{"stdout":"8238275808489501350630472468250338741085949603547285100209855704030048352064479694771057641104306133899\n"}︡{"done":true}︡
︠4d266380-43cf-4ded-a42d-c4a5155df597s︠
q=int(N/p)
is_prime(p)
is_prime(q)
print '{0} \nand \n{1} \nare the prime factors of\n{2}' .format(p,q,N)


︡5644cc1a-5bca-47af-850d-f1563e1f443c︡{"stdout":"True\n"}︡{"stdout":"True"}︡{"stdout":"\n"}︡{"stdout":"8238275808489501350630472468250338741085949603547285100209855704030048352064479694771057641104306133899 \nand \n22832576866549453146369175422517352378071569981576485050575640482713193061668976947982007 \nare the prime factors of\n188101065645171381505912699170711360441949254371595151015797991007560792148074523626155424049122619538590175124010770927696873106177292107986666418970166263827013927564526101816042579984755293\n"}︡{"done":true}︡
︠cb6bd116-1d85-4e41-8b0b-dd50c2083fdci︠
%md
Hw8
︡febdb245-7816-4ccf-b205-c87ee1f861f2︡{"done":true,"md":"Hw8"}
︠134d1300-895d-4dd3-a764-237d610bfdb5︠
#3.26b
N = 52907
p=gcd(N,(763*773)-(2^6*3^3))
q=int(N/p)
p
q
is_prime(p)
is_prime(q)
︡fe348d9d-8cf0-43e1-ab9a-8e24e6a4e280︡{"stdout":"277\n"}︡{"stdout":"191\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}︡
︠0c9d7824-6eca-464a-8d10-c7519485eff3s︠
#3.26c
N = 198103
p = gcd(N, (1189*1605*2815)-(2^2*3^2*5^2*7^2))
q = int(N/p)
p
q
is_prime(p)
is_prime(q)
︡96f37f1c-c785-4053-bac0-53c3ee555e69︡{"stdout":"499\n"}︡{"stdout":"397\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}︡
︠020fd546-7e60-4af5-a60a-20687a1a2286︠









