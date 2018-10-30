︠e98d2ba5-fa98-413f-a7f5-02ca9d09b8f5i︠
%md
<div align='center'>****<font size=5>Week 4 lab</font>****</div><br>
Last week, we performed a Diffie-Hellman key exchange that should take at least ten million seconds to break using the naive algorithm.  In this lab, we're going to break one of the key exchanges using the collision algorithm.
︡35033874-c195-4da4-88dd-3c02b758cf72︡{"done":true,"md":"<div align='center'>****<font size=5>Week 4 lab</font>****</div><br>\nLast week, we performed a Diffie-Hellman key exchange that should take at least ten million seconds to break using the naive algorithm.  In this lab, we're going to break one of the key exchanges using the collision algorithm."}
︠3f6fec6a-229f-483f-aa40-002b0f27da48︠
%md
Put your name here: Daniel Ngu<br>
︡25407ea8-d8c7-4f68-93f7-f4fab1ec9b43︡{"done":true,"md":"Put your name here: Daniel Ngu<br>"}
︠38ed1306-7784-48fb-a86b-4f4223056189s︠
# Message:
p = 200003000003
g = 3
A = 387420489
B = 131128838694
X = 'HNKFNOJXPQRASSUTRFQGTBKMLRZSJNVHIXYAGVKLLFXHFBGWWJHRJDDXXBJESDYHTFWTNOU'
︡3f7bed39-7e5c-431e-87b0-962284ccce4c︡{"done":true}︡
︠c3409439-72ab-45e5-bf7d-58a2c95f919asio︠
# Here is how you take a classical logarithm (not a discrete logarithm) in CoCalc:
log(81,3)
︡327029cf-7c4c-42fe-bdb4-cd8d2ea1ce42︡{"stdout":"4\n"}︡{"done":true}︡
︠b4b4b26d-be5c-4396-b6f2-c26d64314dd7so︠
# Here is how you find the multiplicative order of g in Z/mZ in the specific case m = 11 and g = 4.
Integers(11)(4).multiplicative_order()
︡432f52f6-1919-457b-9bb7-b7c45d19fb9e︡{"stdout":"5\n"}︡{"done":true}︡
︠d0f4a61f-6f0f-4260-8c35-31b4536571e4soi︠
# Here are two ways of making lists in Python:
list1 = [12*i + 1 for i in range(0,10)]
print list1
list2 = []
for i in range(0,10):
    list2.append(next_prime(10*i))
print list2
︡c7795a64-b9a9-4259-baf6-72f3da05c80a︡{"stdout":"[1, 13, 25, 37, 49, 61, 73, 85, 97, 109]\n"}︡{"stdout":"[2, 11, 23, 31, 41, 53, 61, 71, 83, 97]\n"}︡{"done":true}︡
︠7ff0523d-5f4a-4e83-b797-807c3cc3953asi︠
# To compute h*g^(-j*n), you can use the following.  h*pow(g,-j*n,p)
︡6fbfd7dc-78f3-4d53-a520-ed6a3b0c8484︡{"done":true}︡
︠93016475-a0e3-4c61-aae5-e0b316217636soi︠
# Here is a fast way to find an element that appears in both list1 and list2.  
# The idea is to first convert the lists to sets, because Python can search sets very fast.
set(list1).intersection(set(list2))
︡cd80b4ea-cae2-4b5a-89cd-7387fa7f6283︡{"stdout":"set([97, 61])\n"}︡{"done":true}︡
︠797a36c0-4cdc-4bb5-931b-2cbe247b3e3assoi︠
# Here is a reminder of how you can find the position of an element in a list.
list1.index(97)
︡56aad044-4cd6-46c3-880e-e9ea568dde5d︡{"stdout":"8\n"}︡{"done":true}︡
︠707d7940-29a1-4e15-b2f2-5e95721931f3s︠
# Remember to attach the file Week4-StarterCode.sage
attach("Week4-StarterCode.sage")
︡c3ccf8b7-8556-4d0f-92fe-810dbd4cb0e9︡{"done":true}︡
︠1ec31a1e-6e06-402c-b03a-e4e3da0caa6fi︠
%md
#4
︡72befe95-4b93-4a87-97fa-6e3804f8b61b︡{"done":true,"md":"#4"}
︠82c2ca45-bbdd-4cb6-a248-9fcd3f81a5ces︠
def naivecuberoot(m):
    d = -1
    for i in xrange(0,m):
        if 3^i == m:
            d = i
            break
    if d == -1:
        raise Exception('no integer square root found')
    return d
︡482f9023-6694-44e7-83dc-d857d4998807︡{"done":true}︡
︠78753fe8-2d1a-4616-a25a-2d3c0728d6f0s︠
naivecuberoot(A)
︡8355fc70-729a-4feb-ae12-fd3a4899761b︡{"stdout":"18\n"}︡{"done":true}︡
︠b7279f0c-7437-4e04-906a-fbd140998133s︠
pow(3,18,p)
︡73740809-ac1a-4435-827a-df20cfb052a6︡{"stdout":"387420489\n"}︡{"done":true}︡
︠8fb86f9f-6122-4fab-9ced-4f3ae8598359︠
%md
#5
︡3c1a7bed-53f9-4b89-aaf8-af5f8898d135︡{"done":true,"md":"#5"}
︠4fb9aa41-e00d-4b96-9f11-d73463249f8cs︠
N = Integers(p)(g).multiplicative_inverse()
N

︡18d25dd2-98a2-44a3-bda1-ec7195ebaa9a︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 996, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"sage/structure/element.pyx\", line 459, in sage.structure.element.Element.__getattr__ (/ext/sage/sage-8.0/src/build/cythonized/sage/structure/element.c:4230)\n    return self.getattr_from_category(name)\n  File \"sage/structure/element.pyx\", line 472, in sage.structure.element.Element.getattr_from_category (/ext/sage/sage-8.0/src/build/cythonized/sage/structure/element.c:4339)\n    return getattr_from_other_class(self, cls, name)\n  File \"sage/structure/misc.pyx\", line 299, in sage.structure.misc.getattr_from_other_class (/ext/sage/sage-8.0/src/build/cythonized/sage/structure/misc.c:1933)\n    raise dummy_attribute_error\nAttributeError: 'sage.rings.finite_rings.integer_mod.IntegerMod_gmp' object has no attribute 'multiplicative_inverse'\n"}︡{"done":true}︡
︠e240d2d2-0a8b-40a1-9a9d-84301344a0adss︠
n=ceil(pow(N,.5))
n
︡54a70034-6744-45f9-8f3d-e20de792a5fc︡{"stdout":"87707\n"}︡{"done":true}︡
︠1d49f19f-dd4b-4c28-a065-309ae4d1cafci︠
%md
#6
︡fed393a8-2094-438a-8963-d5eaa520e327︡{"done":true,"md":"#6"}
︠11179cdb-6c9c-4f17-ba9c-c11059d49be2s︠
list1 = []
list2 = []
for i in range(0,n):
    list1.append(pow(g,i,p))
    list2.append(B*(pow(g,(-i*n),p)))

︡b986fe3b-e569-495e-adaa-e6d0a513ceb2︡{"done":true}︡
︠bcf00411-cfa5-4c16-9fae-619626928f74i︠
%md
#7
︡d5b280c0-d351-4a7e-8189-e7d34cd1ef98︡{"done":true,"md":"#7"}
︠5c15dd7a-e387-49a9-8a67-b82f6af85bfc︠
set(list1).intersection(set(list2)).pop

︡3156eac9-1788-4e98-998e-eb9ccfbddb87︡{"stdout":"set([24367174726])\n"}︡{"done":true}︡
︠af57451b-0d53-424a-b752-3c7b7c7253fbs︠
i = list1.index(24367174726)
j = list2.index(24367174726)
i
j
︡d519fd0b-47e5-42fc-bcf8-c702ce36deba︡{"stdout":"84892\n"}︡{"stdout":"8\n"}︡{"done":true}︡
︠5927e37a-94f3-4ab5-ab7c-e3b65c5c714as︠
b = i+(j*n)
b

︡96890459-92f8-4072-a439-7d3fc44cc844︡{"stdout":"786548\n"}︡{"done":true}︡
︠deb1d524-9d54-4ed1-b551-33da58c4d759i︠
%md
#8
︡62cfee78-80a0-4e95-8803-2c5475f5bb25︡{"done":true,"md":"#8"}
︠058b5e79-eba8-465d-a3ff-cc18610e3915s︠
k = pow(A,b,p)
k = int()
︡d715f854-dc9e-445a-aec2-3f610d704053︡{"done":true}︡
︠c9e4cb06-53a0-409f-b3ca-c3132eda35eas︠
deciphervigenere(X,153343327050.digits(26))
︡6d4c56d5-54ec-4142-96f9-058629e2a87a︡{"stdout":"'diffiehellmanisanalgorithmusedtoestablishasharedsecretbetweentwoparties'\n"}︡{"done":true}︡
︠897d2a77-aa6a-4999-bb45-e580f3d0cc55︠









