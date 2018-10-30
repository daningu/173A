︠e98d2ba5-fa98-413f-a7f5-02ca9d09b8f5i︠
%md
<div align='center'>****<font size=5>Week 7
    lab</font>****</div><br>
You can work in a group of 1-3 students.  Every student must fill in a CoCalc worksheet which states the names of the other students in the group as well as which student's worksheet should be graded.  <br><br>
This lab has two main parts.  The first part is to share a secret message with a classmate using the RSA cryptosystem.  The second part is to show how, if we know the decryption exponent d, then we can use that to factor N = pq.
︡35033874-c195-4da4-88dd-3c02b758cf72︡{"done":true,"md":"<div align='center'>****<font size=5>Week 7\n    lab</font>****</div><br>\nYou can work in a group of 1-3 students.  Every student must fill in a CoCalc worksheet which states the names of the other students in the group as well as which student's worksheet should be graded.  <br><br>\nThis lab has two main parts.  The first part is to share a secret message with a classmate using the RSA cryptosystem.  The second part is to show how, if we know the decryption exponent d, then we can use that to factor N = pq."}
︠3f6fec6a-229f-483f-aa40-002b0f27da48︠
%md
Put your name here: Daniel Ngu
Who else is in your group (if anyone):<br>
Whose CoCalc worksheet from your group should I grade?<br>
︡25407ea8-d8c7-4f68-93f7-f4fab1ec9b43︡{"done":true,"md":"Put your name here: Daniel Ngu\nWho else is in your group (if anyone):<br>\nWhose CoCalc worksheet from your group should I grade?<br>"}
︠5a6ac52d-9787-4d88-9590-45d3a4b7c233i︠
%md
Attach the file Week7-StarterCode.sage.  In particular, this imports the module "random" 
which can be <br>used for generating random numbers.
<br><br>Reminder: random.randint(a,b) finds a random integer between a and b.
︡50df8440-668c-434e-91df-5614d20d980b︡{"done":true,"md":"Attach the file Week7-StarterCode.sage.  In particular, this imports the module \"random\" \nwhich can be <br>used for generating random numbers.\n<br><br>Reminder: random.randint(a,b) finds a random integer between a and b."}
︠e9554637-7540-43ac-b6a1-b42cee330aees︠
attach ("Week7-StarterCode.sage")
︡8cdc54a7-a6f5-49f7-8da8-624dc94b7a87︡{"done":true}︡
︠67d84420-0c8c-4098-8c6b-5c384f3e2e40s︠
# First CoCalc question: using the RSA cryptosystem to share a secret message.
# Using randint and next_prime, define
p = next_prime(randint(10^14,10^15-1)) # some random 15 digit prime
q = next_prime(randint(10^64,10^65-1)) # some random 65 digit prime
N = p*q# the product of p and q
N
︡75f293f0-0b15-4d18-a167-59ed9b72c171︡{"stdout":"36578428379681933492814816851751293018315529695144191272277329224786572001521577\n"}︡{"done":true}︡
︠35094056-b385-4ceb-a7ba-066a46825d87s︠
# Attempt to factor N using the built-in function "factor".
# It should work fast, and the factorization should be exactly p*q.
factor(N)
p
q
︡c90ff23a-753c-4fa3-a4c8-465eca56df1b︡{"stdout":"483801779640169 * 75606229491109765360578737083633095690256266007257752805156884033"}︡{"stdout":"\n"}︡{"stdout":"483801779640169\n"}︡{"stdout":"75606229491109765360578737083633095690256266007257752805156884033\n"}︡{"done":true}︡
︠35cd8e27-9825-4b52-a99e-355ed158e4ces︠
# You might think that this means it is easy for CoCalc to factor 80 digit numbers
# but this is not always the case.  It turns out p was too small. If
# both p and q are big, then the number is much harder for CoCalc to factor.
# Find a number N which is no more than 80 digits, which is a product of two primes,
# and which CoCalc can't factor in 30 seconds.  (Hit the Stop sign up above to stop a
# computation.  You may need to re-attach the starter code file after you stop the computation.)
p = next_prime(randint(10^39,10^40-1))
q = next_prime(randint(10^39,10^40-1))
N = p*q
N
︡5ff807de-d006-4fd8-a3de-4a5ee2712d78︡{"stdout":"14841972692319505556440542014655519676155514063875036021608978036415931910004731\n"}︡{"done":true}︡
︠6d455ff0-a819-4677-bc6f-914b0ffe96d3s︠
factor(N)
︡ad9a6dd5-ea0b-4b85-9414-b69c1201be7c︡{"stderr":"Error in lines 1-1\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1009, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/ext/sage/sage-8.0/local/lib/python2.7/site-packages/sage/arith/misc.py\", line 2275, in factor\n    int_ = int_, verbose=verbose)\n  File \"sage/rings/integer.pyx\", line 3735, in sage.rings.integer.Integer.factor (/ext/sage/sage-8.0/src/build/cythonized/sage/rings/integer.c:24463)\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint.pyx\", line 352, in sage.rings.factorint.factor_using_pari (/ext/sage/sage-8.0/src/build/cythonized/sage/rings/factorint.c:6768)\n    p, e = n.__pari__().factor(proof=proof)\n  File \"cypari2/gen.pyx\", line 4176, in cypari2.gen.Gen.factor (cypari2/gen.c:126753)\n  File \"src/cysignals/signals.pyx\", line 94, in cysignals.signals.sig_raise_exception (build/src/cysignals/signals.c:1328)\nKeyboardInterrupt\n"}︡{"done":true}︡
︠7fd2818a-9a24-4e0a-a919-76f72dda7821s︠
# For your value of N which CoCalc can't factor, compute phi(N) using our formula from class
# (don't ask CoCalc to compute phi(N) for you because that is probably too hard).
phiN = (p-1)*(q-1)
phiN
︡c3c1aac7-f1ee-4d67-9e28-044e04a92a62︡{"stdout":"14841972692319505556440542014655519676144689728471792150787451308276561379401432\n"}︡{"done":true}︡
︠b56db48b-438f-4ebe-a2b9-2b544a91ca1ds︠
# Find two encryption exponents e1, e2 >= 3 which are relatively prime to phi(N) (and
# are relatively prime to each other). Just guess and check different values of e.
# You can use the command gcd.
e1 = 13
e2 = 89
︡6061a2e5-13e9-4237-a815-6717e9488fbf︡{"done":true}︡
︠bfdc7f0e-94fc-4bca-b6be-137af2702306s︠
gcd(e1,phiN)
gcd(e2,phiN)
︡af675145-e599-4664-9216-ec68b23830c3︡{"stdout":"1\n"}︡{"stdout":"1\n"}︡{"done":true}︡
︠11dcadd4-0022-4ffd-90ef-d5e71e212b87s︠
# Find the corresponding decryption exponents d1, d2.
d1 = inverse_mod(e1, phiN)
d2 = inverse_mod(e2, phiN)
d1
d2
︡2d3181c0-8dfa-40c8-9c29-a8b926f3f498︡{"stdout":"2283380414203000854837006463793156873253029188995660330890377124350240212215605\n"}︡{"stdout":"13341099049275960050733071473847658135860395261547678337786473086091291127551849\n"}︡{"done":true}︡
︠bca608cd-4285-457e-8975-ed85e4e90663︠
# Go to the Piazza page and publish N, e1, e2, and d1.  It turns out that publishing the decryption
# exponent d1 is a huge mistake, even if Alice encrypts using e2.  Don't reply to another student's
# message, just create your own post using the "New post" button.
︡158f3fb1-b48a-4d9d-9b98-8727e5128a57︡
︠e177b28e-2097-4699-b14b-f81724890d7cs︠
# Find another student's parameters on Piazza.  Send them a secret number m encrypted using e2.
# Send them this by replying to their original message on Piazza.  (Don't post m, instead post the encrypted number.)
# To get full credit on this problem, your m must be big enough so that m^e2 > N (otherwise Eve can easily
# recover m by just taking an ordinary e2-th root, as opposed to an e2-th root modulo N.
# Taking an e2-th root modulo N is much harder,
# just like how ordinary logarithms are much easier to compute than discrete logarithms.)
# On the other hand, don't make m bigger than N, otherwise it cannot be recovered.
# Also post a secret message X, encrypted using the following (it only works if you attached the starter code):
m = 2262366343746823779631721
X = "First, she dreamed of little Alice herself, and once again the tiny hands were clasped upon her knee, and the bright eager eyes were looking up into hers—she could hear the very tones of her voice, and see that queer little toss of her head to keep back the wandering hair that would always get into her eyes—and still as she listened, or seemed to listen, the whole place around her became alive with the strange creatures of her little sister’s dream."
enciphervigenere(X,m.digits(26))
︡d038b22a-aca0-43d3-9b3e-154f7efbcd36︡{"stdout":"'OKINZFNZZGGBCEZKEMRVKGKNRDYTJFHSAHEBWFFIIRGBWXPUXEPEMZQCEYYJKMARNBIPAZTQXPYZXXTZAPPEJHAXQJPJKZGTKMANGTMENAKPXMZIMHVDJIQIUROOGFLQLGJUKVNIJFLENUSPWGJJLUKMRDKDUAJZRFNVYVZDAZAGNJJTHASPBUFANRXCAPFUEKAAOCJEBONRCVJSGSYNCDZJAVYVZJUPHSCMMAUOFFCKEOUUKMANGTQNZOSJUNRNYUKGEHVFDEZKQTNGDZJGUGEHVFDTDAVIXNVKRNIZWGQVDDDAQCNERHKNRDRTYJJHPDDTCTRIMRIMAPVVHEOKEINTCDZGRZOXUUUROZQFJO'\n"}︡{"done":true}︡
︠324ec685-d67f-4752-868e-d286b651e430s︠
m = 2262366343746823779631721
e2 = 13
N = 7080926690248106875393901206900059716457615025234849271953087474873089685591627
pow(m,e2,N)
m^e2 > N
︡54a2806a-ccf0-423d-806b-4020e7cd168d︡{"stdout":"932014965831875193755366347309580536988315747002195425149154776525650139431400\n"}︡{"stdout":"True\n"}︡{"done":true}︡
︠18942fb3-4b4a-4ef6-8e99-6e5da9481114︠
# Second CoCalc question.
# Choose another student's message on CoCalc.
# We know the encryption decryption pair e1, d1, but we want to decrypt a message that was encrypted using e2.
# It turns out that knowing e1, d1 is enough to do this.
# Compute e1*d1-1.  We know that phi(N) divides this number, even though we can't compute phi(N) yet.
# Pick some integer g and compute g^(e1*d1-1) modulo N.  Then g^((e1*d1-1)/2) modulo N.
# Then g^((e1*d1-1)/4) modulo N.  Then g^((e1*d1-1)/8) modulo N.  Etc.  Keep going as long as (e1*d1-1)/2^k is an integer.
# If you want to know what's the biggest power of 2 which you can divide by and still get an integer,
# you can use the valuation command in CoCalc.  Some examples are shown below.
valuation(96,2)
valuation(96,3)
valuation(100,3)
valuation(100,5)
︡4af79ade-016c-4019-b6e0-a9950aa82d67︡{"stdout":"5\n"}︡{"stdout":"1\n"}︡{"stdout":"0\n"}︡{"stdout":"2\n"}︡{"done":true}︡
︠dd327737-ab38-43bc-9e91-217eeeaf15a0s︠
N = 13674492036233760375382558327305567372075355297827952442590873505795725550440927
e1 = 31
e2 = 101
d1 = 8822252926602426048633908598261656368954020317551625912033638866180670280432991
︡479d0eb5-ca22-4037-ae61-b9793f8bca39︡{"done":true}︡
︠b918cf1b-b645-4d85-bcfe-68c14c49928ds︠
power = e1*d1-1
power
g = 2
g
︡cb465a77-42df-4c50-94ac-78abc62a8226︡{"stdout":"273489840724675207507651166546111347437574629844100403273042804851600778693422720\n"}︡{"stdout":"2\n"}︡{"done":true}︡
︠319c9586-eb49-463f-bbf5-6728a3fae1acs︠

valuation(power,2)
︡883af345-05f4-4074-bafd-df0ee0e5632b︡{"stdout":"7\n"}︡{"done":true}︡
︠6501f948-2576-4727-a2a7-554bdae34d81︠
for i in range (1,7):
    x = pow(g, power/(2^i), N)
    if x != 1 and x != (-1):
        print x
︡1aec22e9-4ac3-40d8-b633-948642ade489︡{"stdout":"2555702197927682725289853708683199528847934959839606714240086414722613211725958\n"}︡{"done":true}︡
︠d31b32d2-1192-493f-b61c-d2e4c1644d4b︠
# When you compute g^(e1*d1-1) modulo N, the answer will be 1.  In fact, it's likely that most
# or maybe even all of them will be 1.  Assume Z is the first output you see which is not 1.
# If Z = -1 modulo N, then it's useless.  (Also if you only ever see 1, it's useless.)  In that case
# choose a different integer g and try again.  But if Z is not 1 and not -1 mod N, then you know Z^2 = 1 mod N, so
# (Z^2 - 1) is divisible by N.  So (Z+1)(Z-1) is divisible by N = p*q, but neither (Z+1) nor
# (Z-1) is divisible by p*q.  Use this idea and the gcd command to find p or q.
︡7d167cbf-35b5-49fd-85c0-74a4be597ef2︡{"done":true}︡
︠b49f369f-cad8-40e8-8334-e3f19dcd9ab6s︠
Z = 2555702197927682725289853708683199528847934959839606714240086414722613211725958
︡3fb9b989-42c7-4b3f-92c5-3d8ff03a66d6︡{"done":true}︡
︠32906c13-4bf3-4119-8302-9f8938a8368fs︠
p = gcd(N,Z+1)
p
q = N/p
q
phiN = (p-1)*(q-1)
phiN
︡45d8436b-f975-40cf-9c94-5726a91f2147︡{"stdout":"69571088451085322226367799369076191729\n"}︡{"stdout":"196554234534481193616506895416317539578063\n"}︡{"stdout":"13674492036233760375382558327305567371878731492205020163652140242580038934671136\n"}︡{"done":true}︡
︠bc3f6997-3fd3-4a5e-bf8d-c18f53c973c7s︠
d2 = inverse_mod(e2,phiN)
d2
︡60f4ed43-f5bb-4982-a028-b6974fa21f09︡{"stdout":"4874076369350647262512595047356439855323112215043373523677990581513677244041197\n"}︡{"done":true}︡
︠de6fb435-1e70-47cb-b4e4-457469cb0b31s︠
# Once you have found one of the prime factors, you can also easily find the second prime factor of N, and then you can find phi(N),
# and you can use this to find the secret decryption exponent d2.  Finally, use this to find the secret number m
# and use m to decrypt the secret message.
c=3437060398648207100369161444776973990260734659333801270144761465399548836723160
m= pow(c,d2,N)
X="NAZUNIGQPKKICI"
deciphervigenere(X,Integer(m).digits(26))
︡0735811f-17c2-46c2-a814-33ef2a4a2c3b︡{"stdout":"'mathcryptology'\n"}︡{"done":true}︡
︠81506055-ea91-4efd-ae12-2059105e8342︠

#HW7
p = 11
q = 13
N = p*q
phiN = (p-1)*(q-1)
e = 7
︡070f4d70-92e5-4e39-94fd-bd9966a33586︡{"done":true}︡
︠2a854dbb-584a-486c-b782-280eba608696ss︠
d = inverse_mod(e,phiN)
d
︡2d5fe690-0042-40ef-acde-473b92c6feaa︡{"stdout":"103\n"}︡{"done":true}︡
︠58c731fc-176a-4ac0-bb93-fbb23e866bffs︠
pow(3
    *38,7*d,N)
︡6578f23e-4aa7-437d-b16b-aadb76bc70fa︡{"stdout":"114\n"}︡{"done":true}︡
︠6ad4fd26-14d0-43d0-a50f-945cc1460392︠
%md
5
︡57cdc31e-87b7-486e-a053-c99f20bbe316︡{"done":true,"md":"5"}
︠b7f5a4bf-c385-4236-bafa-8a730b532090s︠
N =  1889570071
e1 = 1021763679
e2 = 519424709
c1 = 1244183534
c2 = 732959706
︡b57709f6-242d-4e98-bcd7-695c37bea4b1︡{"done":true}︡
︠a3148953-05ec-4444-9e25-bfef7e3d2af9s︠
[gcd,u,v] = xgcd(e1,e2)

︡7d2bc219-36eb-4f22-aead-c72b9ee5f836︡{"stdout":"252426389\n"}︡{"done":true}︡
︠83341c25-935b-41cc-81ca-791a16b323ac︠
m = pow(c1,u,N)*pow(c2,v,N)
m
︡21103f51-357e-4183-a6f3-8ed55aa94fd8︡{"stdout":"1054592380\n"}︡{"done":true}︡
︠9349a90c-0797-4303-9b40-0fd02319a9a4s︠
pow(m,e1,N)
︡1ed9b376-50a5-4a0e-b3f0-bcf09276d72b︡{"stdout":"1244183534\n"}︡{"done":true}︡
︠1f79a726-6644-4403-8b8c-bb4be824379bs︠
pow(m,e2,N)
︡9b873e06-dc66-4009-9418-4a2f2ba319c4︡{"stdout":"732959706\n"}︡{"done":true}︡
︠9cdd9c24-4168-43ca-a510-0dec9be19bff︠









