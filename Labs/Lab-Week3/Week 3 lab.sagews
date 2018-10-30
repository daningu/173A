︠aefe31f0-8428-477d-acd4-58dab47aa563︠
 
%md
<div align='center'>****<font size=5>Week 3 lab</font>****</div><br>
Work in a group of 2-3 students.  In this lab, we will perform a Diffie-Hellman key exchange.  Our exchange will be secure against a naive attack, but it will be vulnerable to more sophisticated attacks we cover next week.  Remember to start by attaching the Week3-StarterCode.sage file.
︡35033874-c195-4da4-88dd-3c02b758cf72︡{"done":true,"md":"<div align='center'>****<font size=5>Week 3 lab</font>****</div><br>\nWork in a group of 2-3 students.  In this lab, we will perform a Diffie-Hellman key exchange.  Our exchange will be secure against a naive attack, but it will be vulnerable to more sophisticated attacks we cover next week.  Remember to start by attaching the Week3-StarterCode.sage file."}
︠3f6fec6a-229f-483f-aa40-002b0f27da48︠
%md
Put your names here: Daniel Ngu, Hussain Jafari<br>
Alice: Hussain Jafari<br>
Bob:  Daniel Ngu<br>
Bob2 (if you are a group of 3): Name 3
︡25407ea8-d8c7-4f68-93f7-f4fab1ec9b43︡{"done":true,"md":"Put your names here: Daniel Ngu, Hussain Jafari<br>\nAlice: Hussain Jafari<br>\nBob:  Daniel Ngu<br>\nBob2 (if you are a group of 3): Name 3"}
︠38ed1306-7784-48fb-a86b-4f4223056189s︠
p = 401
list_of_points = [[x,pow(3,x,p)] for x in xrange(0,p-1)]
pts = Graphics()
pts = pts + point(list_of_points)
show(pts)
︡941ac5b0-2db9-4a0d-a97b-3595989ed2a6︡{"file":{"filename":"/home/user/.sage/temp/project-b7edc48e-eea6-4f40-913c-c8b714774816/207/tmp_0HVRvO.svg","show":true,"text":null,"uuid":"65976dce-df63-473b-abd9-fb3cf326c0ea"},"once":false}︡{"done":true}︡
︠c6061e5d-cf51-48fe-896b-6f139f39d4b3s︠
def naivesquareroot(m):
    d = -1
    for i in xrange(0,m):
        if i^2 == m:
            d = i
            break
    if d == -1:
        raise Exception('no integer square root found')
    return d
︡e7673e06-16fb-4399-8b25-add8daf5b9af︡{"done":true}︡
︠bf87847d-2c72-46f2-927d-e7bcf0dafd79s︠
attach("Week3-StarterCode.sage")
︡e41687f4-100c-48c7-abbf-f5f1642267f1︡{"done":true}︡
︠d0f4a61f-6f0f-4260-8c35-31b4536571e4s︠
p = 257
list_of_points = [[x,pow(3,x,p)] for x in xrange(0,p-1)]
pts = Graphics()
pts = pts + point(list_of_points)
show(pts)
︡c3f55480-aec7-4d87-a1c5-b796e80cfd07︡{"file":{"filename":"/home/user/.sage/temp/project-8db363bf-3861-4e07-98a4-266cd2220651/199/tmp_cZP6ca.svg","show":true,"text":null,"uuid":"688a12b2-876b-472a-947a-f705833f3fc4"},"once":false}︡{"done":true}︡
︠3c245820-927d-4fe4-a506-afcef1b263ac︠
p = 257
list_of_points = [[x,pow(2,x,p)] for x in xrange(0,p-1)]
pts = Graphics()
pts = pts + point(list_of_points)
show(pts)

︡e454bfd0-6cf5-4e71-a196-a07fc3b1aa99︡{"file":{"filename":"/home/user/.sage/temp/project-8db363bf-3861-4e07-98a4-266cd2220651/199/tmp_FEmPz8.svg","show":true,"text":null,"uuid":"610a5314-1377-47d5-bdd1-95c9a1c56dcc"},"once":false}︡{"done":true}︡
︠e6f5c527-0eb1-4c88-87e2-1b001430b6f5︠
# 2 is not a primitive root of 257, so there is an integer x < p-1 such that 2^x = 1 (mod 257)
︡57c735fd-bc5d-44ba-bece-5923c9046d59︡
︠440eddf2-764a-418f-98d9-ea2b0189ed49s︠
def naivedlog(g,h,m):
    d = -1
    for i in xrange(0,m):
        if pow(g,i,m) == h:
            d = i
            break
    if d == -1:
        raise Exception('no power found')
    return d
︡b081a1ae-1395-4c73-8e2b-e572efbd50c0︡{"done":true}︡
︠7a43bf35-856b-43b7-8a39-1bc586dbfe29s︠
naivedlog(3,50,257)
︡f53ee348-86f3-4060-ba9b-b93a3cf529ab︡{"stdout":"158\n"}︡{"done":true}︡
︠0c4130f6-dc1d-4c56-8f32-56791021d986ss︠
p = next_prime(10^6)
p
︡25fb7bd9-aa40-43a0-aa03-8fd2d28eadcb︡{"stdout":"1000003\n"}︡{"done":true}︡
︠5ddf3ab5-2702-4189-ae8f-5eef416d1ec6s︠
timeit("naivedlog(2,50,p)", number = 1, repeat = 1)
︡e17d4a81-703d-4be3-af3f-23669e589ef4︡{"stdout":"1 loops, best of 1: 4.31 s per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠bc2d7124-26ab-451c-903a-50db5b5a95a0︠
prime = next_prime(10^6)
p1 = next_prime(prime*10^7)
p1
#10,000,000s aproximately 1.2 days
︡917fff01-185b-4318-9ce3-af21013ea62b︡{"stdout":"10000030000019\n"}︡{"done":true}︡
︠22c6572e-0b9f-4822-a5f0-897079ea78efs︠
b=72
︡df45cd05-df76-4504-b1cb-f41badcca23e︡{"done":true}︡
︠6faabb2f-43e0-4f33-a6e2-2728b8bcd0f6s︠
B=pow(3,72,p1)
︡25ebf913-cd59-4c24-9793-0079253dbb4c︡{"done":true}︡
︠30a45271-f574-469f-b6a8-41239c97d4bes︠
B
︡267b0aa4-1516-40d3-9199-8b7af155ddfe︡{"stdout":"3698022101325\n"}︡{"done":true}︡
︠cf2a1c35-be9a-4eb0-9aaa-38dba16f66das︠
(20*26^0)+(4*26^1)+(1*26^2)
︡45e9664d-a354-429a-9387-618a3e21ce2c︡{"stdout":"800\n"}︡{"done":true}︡
︠9e52eaf3-41f7-4d64-ba41-c0fc16c4db50s︠
800.digits(26)
︡bb0e9e3c-dd1c-4962-9b52-38c04f2e6135︡{"stdout":"[20, 4, 1]\n"}︡{"done":true}︡
︠cc05e255-635c-4282-aa29-110b833d90eas︠
A= 9371869731872
k = pow(A,b,p1)
k
︡ec04b4d4-fadc-4fd3-9766-78417bbb6f13︡{"stdout":"4852083761172\n"}︡{"done":true}︡
︠fabf2f3b-937e-4762-8ad4-b774606b5d61s︠
X="It was the White Rabbit, trotting slowly back again, andlooking anxiously about as it went, as if it had lost something;and she heard it mutteringto itself The Duchess!  The Duchess!Oh my dear paws!  Oh my fur and whiskers!  She'll get meexecuted, as sure as ferrets are ferrets!  Where CAN I havedropped them, I wonder? Alice guessed in a moment that it waslooking for the fan and the pair of white kid gloves, and shevery good-naturedly began hunting about for them, but they werenowhere to be seen--everything seemed to have changed since herswim in the pool, and the great hall, with the glass table andthe little door, had vanished completely.Very soon the Rabbit noticed Alice, as she went hunting about,and called out to her in an angry tone, Why, Mary Ann, what AREyou doing out here?  Run home this moment, and fetch me a pair ofgloves and a fan!  Quick, now!  And Alice was so much frightenedthat she ran off at once in the direction it pointed to, withouttrying to explain the mistake it had made."
X
︡55727947-5f77-43be-9221-8d40dc91301f︡{"stdout":"\"It was the White Rabbit, trotting slowly back again, andlooking anxiously about as it went, as if it had lost something;and she heard it mutteringto itself The Duchess!  The Duchess!Oh my dear paws!  Oh my fur and whiskers!  She'll get meexecuted, as sure as ferrets are ferrets!  Where CAN I havedropped them, I wonder? Alice guessed in a moment that it waslooking for the fan and the pair of white kid gloves, and shevery good-naturedly began hunting about for them, but they werenowhere to be seen--everything seemed to have changed since herswim in the pool, and the great hall, with the glass table andthe little door, had vanished completely.Very soon the Rabbit noticed Alice, as she went hunting about,and called out to her in an angry tone, Why, Mary Ann, what AREyou doing out here?  Run home this moment, and fetch me a pair ofgloves and a fan!  Quick, now!  And Alice was so much frightenedthat she ran off at once in the direction it pointed to, withouttrying to explain the mistake it had made.\"\n"}︡{"done":true}︡
︠1e5c19f1-2369-4fee-9de2-b93eef0ceb62s︠
enciphervigenere(X,4852083761172.digits(26))
︡7dec06ac-1b2e-4f86-89f2-36c8ff9ce6e1︡{"stdout":"'GRTSYOJKTFGQWXVDHFRROGZOKTDQJLORTDGZIYDSOICTAJMLCOIIGKVGLMYGAGYMSQSYDVCBLRXKOAKZEYBIGYOUUJCREATBCTAQFBZKVTJFRKRLZZTOKERLAZNGRCRFBVAXJKPQREWJPENBQQLZSTFKXPNXOYJJSVDSOSTYYNFQIBJYNJKIJEBLSZGDBASQWJVUYRPCXKLZTXBRQXJKAGXOCRPONZTKZYLFZGQGJOMNMWJOJKJGULFJZTGIGABYAZUYBBGKSSJOKKRRESZDVCXQJLGQDPMCMPQZKACTXLBQZKKCOOMDTZOOGQFBEIGBZUGKBQEWBZTEDMMAFGOWXBBJVTKBCTESLQATBCHLSRCGXOJKJZSQLNZACBPCKGCCGXBRMYWYZGTBTCOQZCKTDQCBEKYVUEYTBUNVPMBBQFFIZJKOQUFEOIVNBNMLDGIFZECEOWGOJGIJUFLNOJKDJYPKZVDRBYLALNZNOQRJBVUJTNXBTXFONJKAAMJHRZVKIWTBJENQUKRFBJGWDOQLMQAIZFGIGABSYNJKTCLQZAIVOKEYYGAOCTAAYIDKYQAQRMEWXDPGKYLDJEOQTBUFVEGMAGKLUESZVTKVMSAGOIIURRFBJKMWTEMKBLNDUSLKCKLGIFLBRAEEKVRGFPMCYRJXKPYLASLVPWRGAHFURCTAYJFUKRCYPMKRUNATODFRBFKYVNXRQEWXVPUCDYQGTXGOKRFBVOMGIQGMKAZKQOKRCALURKZEMSQLXTKTDRMBPVGCOKRFBEONVGHCGQZGYOGAC'\n"}︡{"done":true}︡
︠436f9a8f-a3b2-4ce7-a422-e9db0ac01d02︠









