︠d9bfac0f-b65a-4e34-b2b0-c62287f69e3fi︠
%md
<div align='center'>****<font size=5>Week 2 lab</font>****</div><br>
You are encouraged to work in a group of 2-3 students.  In this lab, we will be timing some operations as well as writing a function which attempts to automatically decrypt text encrypted using a shift cipher.  Remember to start by attaching the Week2-StarterCode.sage file.
︡e3f18b56-e0e4-4efb-ab93-4d0c453213ec︡{"done":true,"md":"<div align='center'>****<font size=5>Week 2 lab</font>****</div><br>\nYou are encouraged to work in a group of 2-3 students.  In this lab, we will be timing some operations as well as writing a function which attempts to automatically decrypt text encrypted using a shift cipher.  Remember to start by attaching the Week2-StarterCode.sage file."}
︠c19844ea-a7e2-4f10-b1d8-30ec14d9b365︠
%md
Names of the group members: Hussain Jafari
<br> <br> (The %md tells Sage not to try to evaluate this cell, just to display it.  md stands for markdown.)
︡132dacf9-a5e7-4f19-8157-d7dd12e75c06︡{"done":true,"md":"Names of the group members: Hussain Jafari\n<br> <br> (The %md tells Sage not to try to evaluate this cell, just to display it.  md stands for markdown.)"}
︠7d49362c-f65f-43f3-9490-5d8a41454366︠
attach("Week2-StarterCode.sage")
︡59c65ad4-9f56-48e4-8f39-c7a7a49a8324︡{"done":true}︡
︠3330bf87-33aa-433f-bf5f-c3e6757ef2c4i︠
%md
Put your work for Problem 1 below:
︡be80aa54-228f-4412-a548-265e7a90dbab︡{"done":true,"md":"Put your work for Problem 1 below:"}
︠0d2691d3-8de6-4b5e-b02e-c1a8303b36ac︠
timeit("a=2^(10^9)\nmod(a,3)", number=1, repeat=1)
︡5e371593-77c7-4c61-90b1-5749a79a6c65︡{"stdout":"1 loops, best of 1: 223 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠45718c1e-c6ab-4832-a220-92ccd4b25f45︠
︡7162286f-5a51-4a4a-8657-9ab1b033dc5d︡
︠8fbb7932-3ca6-4c30-b163-b175ece858c2︠
timeit("pow(2,10^9,3)", number=1, repeat =1)
︡c7cb8c9a-85df-4d57-97c1-93c38e8ce60a︡{"stdout":"1 loops, best of 1: 70.1 µs per loop\n"}︡{"done":true}︡
︠35d59362-b6eb-4309-b2cc-200fdb1dc98d︠
find_prime= 10^300
prime = next_prime(find_prime)
prime
︡21ccae69-257e-4781-9f1f-7c571a192070︡{"stdout":"1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000331\n"}︡{"done":true}︡
︠c4cb2678-524e-4716-9e49-374d1b4637c0︠
timeit("pow(2,10^10^5,prime)", number = 1, repeat = 1)
︡74b44225-9262-4a53-807a-df9a35bc5bd8︡{"stdout":"1 loops, best of 1: 175 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠b9674b23-942c-48fc-b532-a50168f5a6c1︠
timeit("pow(2,10^10^6,prime)", number = 1, repeat = 1)
︡7f73f773-4369-4e14-b99a-d7d2a7bb3762︡{"stdout":"1 loops, best of 1: 2 s per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠77feeccb-a528-4475-a36f-57992433af53︠
timeit("pow(2,10^10^6.8,prime)", number = 1, repeat = 1)
︡33d233e7-ffcf-43ba-9e62-02b8c252227c︡{"stdout":"1 loops, best of 1: 9.96 s per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠b0b32907-c06f-49c5-b909-dd5018a387a5i︠
%md 
Put your work for Problem 2 below:
︡ab0c054c-1062-4934-b6cf-f6cbf73b438f︡{"done":true,"md":"Put your work for Problem 2 below:"}
︠c1e3fd9d-2a2a-4307-8cae-d1d83289d929︠
d=random.randint(10^50,10^51)
d
timeit("factor(d)", number = 1, repeat = 1)
︡5a912d61-a10d-40b4-b360-be5ad3950b97︡{"stdout":"217725228935766928784451170637051809345417077362261L\n"}︡{"stdout":"1 loops, best of 1: 463 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠1291dec0-9f3e-45ff-9044-c7cf0afb8814︠
d=random.randint(10^80,10^81)
d
timeit("factor(d)", number = 1, repeat = 1)
︡38fd55ef-d7bb-4138-8b48-98494b550360︡{"stdout":"852359846765490916680371791622211985027196527034416775548247330131043808104577197L\n"}︡{"stdout":"1 loops, best of 1: 1.47 s per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠64477c31-c302-4a9a-8376-0bbd136e8169s︠
attach("Week2-StarterCode.sage")
d=random.randint(10^83,10^84)
d
timeit("factor(d)", number = 1, repeat = 1)
︡4318b2b8-46d3-4249-9c80-ab188a4825e5︡{"stdout":"814365851842764456288825122233632414578346226713347588608520968061848918877927040962L\n"}︡{"stdout":"1 loops, best of 1: 5.95 s per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠4cd1f035-73fc-49fe-8465-8db3f22e5b65i︠
%md 
Put your work for Problem 3 below:
<br><br>(For your convenience, most of the Week 1 lab instructions are reproduced at the bottom of this worksheet.  Some of these commands will be necessary for completing Problem 3.  Also, the definition of the function has been started for you, so that you know what the syntax looks like.)
︡50fdd360-638f-4275-9aa6-d6b2fd8becd1︡{"done":true,"md":"Put your work for Problem 3 below:\n<br><br>(For your convenience, most of the Week 1 lab instructions are reproduced at the bottom of this worksheet.  Some of these commands will be necessary for completing Problem 3.  Also, the definition of the function has been started for you, so that you know what the syntax looks like.)"}
︠cd6a1ca3-3928-469a-99a3-7a5951fc4c52s︠
def autodecrypt(X):
    for i in range (0,26):
        freqvec=numpy.dot(getfreq(shift(X,i)),englishfreq)
        if freqvec > 0.06:
            Y=shift(X,i)
            break
    return Y
︡7054a173-7c9d-4b34-b019-12c95f9d09e6︡{"done":true}︡
︠6d96b565-9536-42b7-8d3f-4f1defb58c67i︠
%md 
Put your work for Problem 4 below:
︡4ce0a12a-2110-4510-ac43-9c08a29e4afd︡{"done":true,"md":"Put your work for Problem 4 below:"}
︠02ddad94-157c-4737-a50b-434cc55291c8s︠
# Here is the ciphertext you want to decrypt using your autodecrypt function.
X='PRWXASHQGPXCHIPGIHUJCRIXDCXCVPIQXGIWPCSWPHPBDCVHIXIHBPCNXCUPCIRDCKDAJIXDCHIWDJHPCSHDUSDGBPCIPIDBHXCIDLWXRWVDSWPHEJIPBNHIXREDHHXQXAXINUDGCDIXRXCVPCPSJAIHPRIPCSUXVJGXCVDJIXIHEJGEDGIJEIDPQDJIXIHEGXBPGNHRWDDASPNHPRWXASIWXCZHCPIJGPAANDCANDUEAPNQJIBPCNPUDGBDUEAPNRDCIPXCHSXHRXEAXCPGNUPRIDGNDJRPCISDIWXHDGIWPIEJIHDJIDJIHWDLHPRWXASIWPIXIBJHIIWXCZEGPRIXRPAANDGUPXACDLXUIWGDJVWDJIRWXASWDDSPQGPXCWPHCDDEEDHXIXDCXIXHEAPXCIWPIXILXAAPIIPXCPEDHXIXDCDUHIPIJHFJDPHLXIWDJGDGSXCPGNPCXBPAHBPCZCDLHCDILWNPRDLSDVDGAXDCLPHCDIQDGCLXIWPQGPXCDCPEPGLXIWDJGHLWNHJRWPCXBPAHRPCCDIPSSHJQIGPRIDGDQIPXCUGDBQDDZHPCSHRWDDAXCVIWPIEPGPBDJCIEDHXIXDCLWXRWBPCWDASHIDSPNQJIPWJBPCQGPXCXHCDIXCIWPIRAPHHRDCHIPCIANIWGDQQXCVPCSEJAHPIXCVXIGPEXSANUDGBHDEXCXDCH'
︡487db89b-e0fe-43b1-9641-29525a95bd71︡{"done":true}︡
︠65027889-0684-4488-b07d-3e10843303ees︠
autodecrypt(X)
︡5dd22c0d-edb0-4797-89dd-4b1b6b397f3e︡{"stdout":"'ACHILDSBRAINSTARTSFUNCTIONINGATBIRTHANDHASAMONGSTITSMANYINFANTCONVOLUTIONSTHOUSANDSOFDORMANTATOMSINTOWHICHGODHASPUTAMYSTICPOSSIBILITYFORNOTICINGANADULTSACTANDFIGURINGOUTITSPURPORTUPTOABOUTITSPRIMARYSCHOOLDAYSACHILDTHINKSNATURALLYONLYOFPLAYBUTMANYAFORMOFPLAYCONTAINSDISCIPLINARYFACTORYOUCANTDOTHISORTHATPUTSOUTOUTSHOWSACHILDTHATITMUSTTHINKPRACTICALLYORFAILNOWIFTHROUGHOUTCHILDHOODABRAINHASNOOPPOSITIONITISPLAINTHATITWILLATTAINAPOSITIONOFSTATUSQUOASWITHOURORDINARYANIMALSMANKNOWSNOTWHYACOWDOGORLIONWASNOTBORNWITHABRAINONAPARWITHOURSWHYSUCHANIMALSCANNOTADDSUBTRACTOROBTAINFROMBOOKSANDSCHOOLINGTHATPARAMOUNTPOSITIONWHICHMANHOLDSTODAYBUTAHUMANBRAINISNOTINTHATCLASSCONSTANTLYTHROBBINGANDPULSATINGITRAPIDLYFORMSOPINIONS'\n"}︡{"done":true}︡
︠fe0f758b-b703-4207-9d48-ac18b110963f︠

︡36f5a4ec-559f-4f92-a3b1-aada84b6fbfe︡
︠9e2e53e2-cbd3-4b81-bc42-5cc1c144d2b6i︠
%md
<div align='center'>****<font size=3>End of the new material</font>****</div><br>
The remainder of this worksheet is a copy of the Week 1 worksheet.  Some of this code will help you write the autodecrypt function above.
︡6e321c91-f181-4717-8892-b38b17f653d9︡{"done":true,"md":"<div align='center'>****<font size=3>End of the new material</font>****</div><br>\nThe remainder of this worksheet is a copy of the Week 1 worksheet.  Some of this code will help you write the autodecrypt function above."}
︠a872f562-0517-4da0-9f30-9b9dbe84e817i︠
%md
Try evaluating vigenere_encrypt(string1,string2), where string1 is some piece of text you want to encrypt, and string2 is the keyword you want to use.  Once you're convinced this is working as expected, go to the Piazza forum and post the ciphertext you've made.  Please ensure the following:<br>(a) Your encrypted text should be quite long, maybe 15 lines when it is printed in Sage.  Just copy and paste from some source into Sage.  You don't have to worry about punctuation, it will automatically be removed for you.  The only exception is quotation marks; don't have any quotation marks in your plaintext.<br>(b) Choose your keyword or keywords to have total length 7, 8, 9, 10, or 11.
︡db192737-f8a0-4e46-a04e-1f5af0332c96︡{"done":true,"md":"Try evaluating vigenere_encrypt(string1,string2), where string1 is some piece of text you want to encrypt, and string2 is the keyword you want to use.  Once you're convinced this is working as expected, go to the Piazza forum and post the ciphertext you've made.  Please ensure the following:<br>(a) Your encrypted text should be quite long, maybe 15 lines when it is printed in Sage.  Just copy and paste from some source into Sage.  You don't have to worry about punctuation, it will automatically be removed for you.  The only exception is quotation marks; don't have any quotation marks in your plaintext.<br>(b) Choose your keyword or keywords to have total length 7, 8, 9, 10, or 11."}
︠75295d0a-0cac-4e3c-bb5c-ad3025dd76a4i︠
%md
Copy another student's ciphertext from Piazza that you will try to decrypt.  Name it X.  For example, you might evaluate something like the following (but the ciphertext should be much much longer than this).<br>
X = "SKDFJSLNERWIERDOFJSKAFND"
︡169d46a7-202a-425a-9f05-8bb2f9fcea0c︡{"done":true,"md":"Copy another student's ciphertext from Piazza that you will try to decrypt.  Name it X.  For example, you might evaluate something like the following (but the ciphertext should be much much longer than this).<br>\nX = \"SKDFJSLNERWIERDOFJSKAFND\""}
︠cf9b4059-569f-4781-b8a2-40dd22d6ca76i︠
%md
Use the function guess_vigenere_key_length(X,k), where X is the ciphertext, and where k is your guess for the length of the key.  This will show you k total numbers.  What happens is that the original string X gets divided into every k-th character, and then the index of coincidence is computed for each of these substrings.  For example, if you were to guess k = 4 (which you shouldn't, because you know the key length is 7, 8, 9, 10, or 11), you would get the index of coincidence for the substring of characters in position 0 mod 4, in position 1 mod 4, in position 2 mod 4, and in position 3 mod 4.  If it's English, the index of coincidence for each of these should be around .0685.  If it's random letters, the index will be smaller, closer to .04 on average.
︡9a3eb666-aad7-4a64-9f88-9352424d4d1c︡{"done":true,"md":"Use the function guess_vigenere_key_length(X,k), where X is the ciphertext, and where k is your guess for the length of the key.  This will show you k total numbers.  What happens is that the original string X gets divided into every k-th character, and then the index of coincidence is computed for each of these substrings.  For example, if you were to guess k = 4 (which you shouldn't, because you know the key length is 7, 8, 9, 10, or 11), you would get the index of coincidence for the substring of characters in position 0 mod 4, in position 1 mod 4, in position 2 mod 4, and in position 3 mod 4.  If it's English, the index of coincidence for each of these should be around .0685.  If it's random letters, the index will be smaller, closer to .04 on average."}
︠af15d2ee-ef8b-4940-a348-1c1af553a445i︠
%md
Once you think you know what the key length is, you still need to find out what the shift amounts were.  Use the function<br>separate(X,a,k)<br>which will pick out the characters in positions a modulo k.
︡4e83a50c-1a53-48bc-81d1-61e9f3126315︡{"done":true,"md":"Once you think you know what the key length is, you still need to find out what the shift amounts were.  Use the function<br>separate(X,a,k)<br>which will pick out the characters in positions a modulo k."}
︠a0953ca6-87f7-4c32-b56a-02d599d9b3dei︠
%md
To compare to English, you can use<br>numpy.dot(getfreq(Y),englishfreq)<br>This computes a dot product of the letter frequencies in a string Y with letter frequencies in average English.  Again, if Y is in English, we expect a number around .0685.  If Y is not decrypted, we expect a number closer to .04.
︡68feb5ad-4eb5-48b6-a38c-41534008fb99︡{"done":true,"md":"To compare to English, you can use<br>numpy.dot(getfreq(Y),englishfreq)<br>This computes a dot product of the letter frequencies in a string Y with letter frequencies in average English.  Again, if Y is in English, we expect a number around .0685.  If Y is not decrypted, we expect a number closer to .04."}
︠10d07580-cccc-4391-b673-4f53cbe89552i︠
%md
Try every possible shift of the characters in Y, and see which shift most closely matches English.  The following code creates a length 26 vector (corresponding to the 26 possible shifts)<br>[numpy.dot(getfreq(???something involving j???),englishfreq) for j in range(0,26)]<br>Hint.  Use the function shift(Y,n), where Y is a string and where n specifies how much to shift by.
︡3ec2cd34-1eac-4abe-966d-13cc990799c1︡{"done":true,"md":"Try every possible shift of the characters in Y, and see which shift most closely matches English.  The following code creates a length 26 vector (corresponding to the 26 possible shifts)<br>[numpy.dot(getfreq(???something involving j???),englishfreq) for j in range(0,26)]<br>Hint.  Use the function shift(Y,n), where Y is a string and where n specifies how much to shift by."}
︠28c4f0dc-5b54-49dc-8094-df5340b8ea97i︠
%md
What shift amount corresponded to the biggest value?  If z is a vector of numbers, you can use<br>max(z)<br>to get the maximum value, and even better, you can use<br>z.index(max(z))<br>to find the position where it occurred.  (Again, we're expecting this maximum to be approximately .0685.)  Why do we care about this index?  Because this index is the shift amount we're supposed to use to get back to regular English.
︡d72d6754-a7e1-4f4e-aded-1d64a96f03e5︡{"done":true,"md":"What shift amount corresponded to the biggest value?  If z is a vector of numbers, you can use<br>max(z)<br>to get the maximum value, and even better, you can use<br>z.index(max(z))<br>to find the position where it occurred.  (Again, we're expecting this maximum to be approximately .0685.)  Why do we care about this index?  Because this index is the shift amount we're supposed to use to get back to regular English."}
︠55a5753b-d5f8-4cb9-aa6d-b041a2a11629i︠
%md
Once you think you know the k different shift amounts, you can use<br>vigenere(X,[a0,a1,...,a(k-1)])<br>to attempt to decrypt the ciphertext, where a0, a1, ..., a(k-1) are the shift amounts.  If it helps, you can use a for loop to automate going through each of the k different substrings.  for loops in Python look like<br>for b in range(0,4):<br>&nbsp;&nbsp;&nbsp;???one or more indented lines involving b, which in this example goes b = 0, then b = 1, then b = 2, and lastly b = 3.
︡049a33b5-4890-4e8e-a188-a168b20b6e0a︡{"done":true,"md":"Once you think you know the k different shift amounts, you can use<br>vigenere(X,[a0,a1,...,a(k-1)])<br>to attempt to decrypt the ciphertext, where a0, a1, ..., a(k-1) are the shift amounts.  If it helps, you can use a for loop to automate going through each of the k different substrings.  for loops in Python look like<br>for b in range(0,4):<br>&nbsp;&nbsp;&nbsp;???one or more indented lines involving b, which in this example goes b = 0, then b = 1, then b = 2, and lastly b = 3."}
︠30f07ab8-1192-4242-bb49-2ad5bd70613di︠
%md
There's no need to post the decrypted message on Piazza (maybe someone else is working on that same message), instead just leave it here in this worksheet.
︡e0f775d4-d3e8-4e47-b09c-a63628aa0050︡{"done":true,"md":"There's no need to post the decrypted message on Piazza (maybe someone else is working on that same message), instead just leave it here in this worksheet."}









