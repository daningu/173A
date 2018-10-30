︠d9bfac0f-b65a-4e34-b2b0-c62287f69e3fi︠
%md
<div align='center'>****<font size=5>Week 1 lab</font>****</div><br>
You are encouraged to work in a group of 2-3 students.  In this lab, we will be decrypting a piece of text that was encrypted using the Vigenere cipher.  There are two main steps:<br><br>
Step 1.  Determine the key length<br>
Step 2.  Determine the shift amounts
︡e3f18b56-e0e4-4efb-ab93-4d0c453213ec︡{"done":true,"md":"<div align='center'>****<font size=5>Week 1 lab</font>****</div><br>\nYou are encouraged to work in a group of 2-3 students.  In this lab, we will be decrypting a piece of text that was encrypted using the Vigenere cipher.  There are two main steps:<br><br>\nStep 1.  Determine the key length<br>\nStep 2.  Determine the shift amounts"}
︠3330bf87-33aa-433f-bf5f-c3e6757ef2c4i︠
%md
We will need some custom functions defined in the file Week1-StarterCode.sage.  Start out by attaching that file.  Remember to put its name in quotation marks, and remember to hold down shift when you hit enter to evaluate.
︡be80aa54-228f-4412-a548-265e7a90dbab︡{"done":true,"md":"We will need some custom functions defined in the file Week1-StarterCode.sage.  Start out by attaching that file.  Remember to put its name in quotation marks, and remember to hold down shift when you hit enter to evaluate."}
︠963da184-d049-4cea-b212-9cb2231d6c27s︠
attach("Week1-StarterCode.sage")
︡df90d5d4-f607-42f2-83e8-a6ce54fa0505︡{"done":true}︡
︠a872f562-0517-4da0-9f30-9b9dbe84e817i︠
%md
Try evaluating vigenere_encrypt(string1,string2), where string1 is some piece of text you want to encrypt, and string2 is the keyword you want to use.  Once you're convinced this is working as expected, go to the Piazza forum and post the ciphertext you've made.  Please ensure the following:<br>(a) Your encrypted text should be quite long, maybe 15 lines when it is printed in Sage.  Just copy and paste from some source into Sage.  You don't have to worry about punctuation, it will automatically be removed for you.  The only exception is quotation marks; don't have any quotation marks in your plaintext.<br>(b) Choose your keyword or keywords to have total length 7, 8, 9, 10, or 11.
︡db192737-f8a0-4e46-a04e-1f5af0332c96︡{"done":true,"md":"Try evaluating vigenere_encrypt(string1,string2), where string1 is some piece of text you want to encrypt, and string2 is the keyword you want to use.  Once you're convinced this is working as expected, go to the Piazza forum and post the ciphertext you've made.  Please ensure the following:<br>(a) Your encrypted text should be quite long, maybe 15 lines when it is printed in Sage.  Just copy and paste from some source into Sage.  You don't have to worry about punctuation, it will automatically be removed for you.  The only exception is quotation marks; don't have any quotation marks in your plaintext.<br>(b) Choose your keyword or keywords to have total length 7, 8, 9, 10, or 11."}
︠06aa38ce-6dbf-4765-866e-fe80617715cbs︠
vigenere_encrypt("The rabbithole went straight on like a tunnel for some way and then dipped suddenly down so suddenly that Alice had not a moment to think about stopping herself before she found herself falling down what seemed to be a very deep well", "kittenpaws")
︡02501a63-7b01-48ba-9bdb-3de16fd60e7b︡{"stdout":"'DPXKEOQIPZYTXPIAISPJKQZAXBCLECOIMNRATLBGBAHFIJPYWFNBAXRQXPLWNANWHRCLUVYEGLSFJDZWXTRMLNIAHAMMATHADTWEYUXGXGDTDAXSTUSHISPGZXBGKUTROWVNUXJBGEOZONHNRQWENKOTYYEYAIJYNWPGAUPTOWOUXWXBQEWNOZRWIREWADV'\n"}︡{"done":true}︡
︠b074d3b9-11f8-418a-963d-bbc9212e27c7s︠
test = vigenere_encrypt("She found herself in a long, low hall, which was lit up by a row oflamps hanging from the roof. There were doors all 'round the hall, but they were all locked; and when Alice had been all the way down one side and up the other, trying every door, she walked sadly down the middle, wondering how she was ever to get out again.","testtest")
︡06828a9f-757d-4117-bcda-a6523b094198︡{"done":true}︡
︠3098877e-7943-44cb-a849-a035ac04ca3as︠
test
︡27daf9da-f4be-4c8d-b787-6b663ac0ca19︡{"stdout":"'LLWYHYFWAIJLXPXBGEDHGKDHPLSEEAZBVLOTLPAMNTTRTVGPHJDTFTKATRYBGKXKHQLAXVGHYXZXKIOXKIVHHVKTEPJHNRVMAIZTEPTNMXZXRAWKXEDEESUDXHSGWAZXGEDBVIZTWFWXGEDEMLWPTCVHPRGGXWAWXEFWNTLAXSLAXVLKRMFZXZWKRHGHKWZXPEDDXHKTWPQWHAFMAIEBWHDXPSFWXVAGZLGPLLWPTWWOXVLHZILHNXSZTMF'\n"}︡{"done":true}︡
︠47f52b8d-7b45-45c2-8f32-db7ba68b190f︠

︡cf24e06a-cdc9-4e61-b1f2-89ce722709d4︡
︠fa92503d-fbd5-43f1-b11a-58ca38874ea3︠

︡00ced2bf-3d40-49b0-8d88-1b87c673b73b︡
︠14fbf9a1-c76c-446d-8413-ba41b5ea4937︠

︡be19a778-bd9e-4006-8da0-caf2a2eb2c82︡
︠cc0c3c7c-c486-4937-8640-c33548997e1cs︠
X = "WLVGWNSWMTRTTKPMWZKCDLSEJWHDKIRULTOVWKFBJOFLIZAVSDREFJKVLXPNMTOLQDVVUOVMETMVRHXIVIVSVINRAOYVXCPXQVLXZTINSQRRKCTOLXTRTNOGSEKPGCWEKVBQBHJFIUVRHGYLZEREITRCUOWLVJBCDHARJIDYYIKYMERXVTYBJOWVVRBKCHARJIFNUIJJMFDRXYVOGBPEEEWDSOMKPJGMDYJVTWDKIISMNSHZVUWPVBXYVGEYXPUIMHYUQKYMTYPEETIVRRPZTKJEUGYNPKMKARJLGZHRUVVVYQXYVQTPLRREKKKOWLGXQBWPLKPGBDHRDIPDOCRIOWOGXYRBVRHXVDXQBDPGFEGBLWFILCSQIUFNIYGWFEWUOFYCRZKCVYVJPQEOHSVLGVHKRKMFDRTRGINMRYIKADEWVRKPGBKEEUTGNECKYMIOUQREVQLLPZKGNEWLVIJCCHHFEBJSVTIVUKCHPLKPGBDVXLMFDKEKKPGSQXVILKMWWYFCNNEIRSWNSVLVUIPNHBTFUOEQMTRBKYQWYFCNNEILJMFYQPPZVUEFLTRAGCDWJTZKZWYIVINVRAJKPGCKMWKNTYPTRGINZRAVIBQCHGLCITZRAVIQPNHGZUQPQUICZOKYXWZJAWOVGIVIVOGTIFJNOPWCRBGBLRKYMTOISIDIVSRRJGMESIMTRTNIWLVHCGCWMFEWHEVMEXAGMXPRIUKVLXRIGHYUGVJBQCWSGRVGGUICZOKYQJIFUHYUQZEOCXRXYVZRBRFCVUYSWLCLBJOUWRIOWWHRKJZGCXPKVLKXKMJKEQULRXUWOCWLVZLGKWLRKKJEUGYRVFCWEKVITOVIGRZCDHVVRTOCZMKYAGZDVRKMTOVTFEAKLLPZKQGCWLZJIFNHHSVTKOIVVWTGMWIURXCBDHFOQPVXXYVZUDKIFCWIIISIYWYMRYCUBJOVXRKMJOOTIVNQBPXYVKJEUGYNPGXWLVPEGBHWLGXQCHHKFJGDZSJVXCBDXVVVVSWMVJWPOKMJKWTSDRNZTNSDQJYQTOUXFFSNEWLVIARKUEUFFUYIEIRAVYFPRZUVRDXCLBJOUGIVIVOGEGFTKDLGRCXCCVMMZBADKEKGMTWLXKVLVRHVZJMQPKMKCMTVDXVIPKCWSIZIPCKEMVXTYYIUKPCDVLZIMTDRSBCCVRHVJGITKGSOKWQPDVZEBTILRXKWRBRZVYQUYZRYZAVYUMTRTXSHAFWPKDOIIKPGBHPZXQQEVVRDQHSFEKZWPCRJKYMCNGVVJAVYWLVTPTSVXZRVPYEMCZBAGHVVWCPNDQVEBCVWSKYMVRHWZJTWDKIIRXRVLIUKPGNRGKIQPORJKYMRBLIJKPQYGSWSMNSHZVIAVYWLVKPTOHARCTUYIXYVKJEUGYKPGPLVJKECVOXYVLKCWMETBKYQFVKEGOQWGZZKDXECRVFCHGLCITMOEJJMUGDWIVUQFHHSPBJOGSTKZKXHSWKPGZUMVJBJYRHFWINVEICZMXOUWJZVEODPCSMNSHZVIAYOUIRGITDRJKYMRBLIJKPQYGXYVZGMRYCUJGXRHZJBKXFXZFVDOWAVVVCZUMVJBCXGEGVIUKQXRCTYOUIVHCCVLRKYMUSJLKFNIYGXYVAGMRRUNINVFPRZUGNWLRKWPVBXYVXQZHGFLTFSQXVIXTOWWTIQRDXVVCCVRHVWFCPNQSVMQFOQGVFNVRLWGIQPMLTCVQPDKISZJNOEYKWWWXGQREGRKVWRXMUDKEKTTCSPIUKPGMRQDFVOKQGFLTFSQXVIXTOWWTIQRDXVVKPGDKMIUECVOARJBJOFPRZUVRDXFETADKIGFXGMRYCUAWWPSERKQEQGZCEJSFLDVIPDWLRKVQCHGLCITMRYETQNMRYCULKMWEKVWTNHVJKWVRHGYLZEROYKYMTEVIUJKTSSXLIMCXGLZJBQBBXFUMUDUSPKPKCEICZMHKVWVIBKXJXYRBVRHGYLZERVLFLTFLHWLSRGMWXFKPGCWEKVJADHEIZVINRAEKPGCHXYIMGGDPCJBJOZLFCMYYUPUTPCXJIUWWTDKIIFUCXFEKYWNSFGYLZERDYKYWTSWCNRAUDUMGGMFPUSDKPGZDTRTGCXGTCRKGNLRKFBJOKEEUAQPWLVEWDSOMKP"
︡5a8043ab-5713-4a64-bb78-fb55ea9576cb︡{"done":true}︡
︠75295d0a-0cac-4e3c-bb5c-ad3025dd76a4i︠
%md
Copy another student's ciphertext from Piazza that you will try to decrypt.  Name it X.  For example, you might evaluate something like the following (but the ciphertext should be much much longer than this).<br>
X = "SKDFJSLNERWIERDOFJSKAFND"
︡169d46a7-202a-425a-9f05-8bb2f9fcea0c︡{"done":true,"md":"Copy another student's ciphertext from Piazza that you will try to decrypt.  Name it X.  For example, you might evaluate something like the following (but the ciphertext should be much much longer than this).<br>\nX = \"SKDFJSLNERWIERDOFJSKAFND\""}
︠79928e7c-bdf7-4841-bd87-ebb4e41e6e0as︠
X
︡2dd71553-f37f-477c-9af0-382397a3f9ae︡{"stdout":"'WLVGWNSWMTRTTKPMWZKCDLSEJWHDKIRULTOVWKFBJOFLIZAVSDREFJKVLXPNMTOLQDVVUOVMETMVRHXIVIVSVINRAOYVXCPXQVLXZTINSQRRKCTOLXTRTNOGSEKPGCWEKVBQBHJFIUVRHGYLZEREITRCUOWLVJBCDHARJIDYYIKYMERXVTYBJOWVVRBKCHARJIFNUIJJMFDRXYVOGBPEEEWDSOMKPJGMDYJVTWDKIISMNSHZVUWPVBXYVGEYXPUIMHYUQKYMTYPEETIVRRPZTKJEUGYNPKMKARJLGZHRUVVVYQXYVQTPLRREKKKOWLGXQBWPLKPGBDHRDIPDOCRIOWOGXYRBVRHXVDXQBDPGFEGBLWFILCSQIUFNIYGWFEWUOFYCRZKCVYVJPQEOHSVLGVHKRKMFDRTRGINMRYIKADEWVRKPGBKEEUTGNECKYMIOUQREVQLLPZKGNEWLVIJCCHHFEBJSVTIVUKCHPLKPGBDVXLMFDKEKKPGSQXVILKMWWYFCNNEIRSWNSVLVUIPNHBTFUOEQMTRBKYQWYFCNNEILJMFYQPPZVUEFLTRAGCDWJTZKZWYIVINVRAJKPGCKMWKNTYPTRGINZRAVIBQCHGLCITZRAVIQPNHGZUQPQUICZOKYXWZJAWOVGIVIVOGTIFJNOPWCRBGBLRKYMTOISIDIVSRRJGMESIMTRTNIWLVHCGCWMFEWHEVMEXAGMXPRIUKVLXRIGHYUGVJBQCWSGRVGGUICZOKYQJIFUHYUQZEOCXRXYVZRBRFCVUYSWLCLBJOUWRIOWWHRKJZGCXPKVLKXKMJKEQULRXUWOCWLVZLGKWLRKKJEUGYRVFCWEKVITOVIGRZCDHVVRTOCZMKYAGZDVRKMTOVTFEAKLLPZKQGCWLZJIFNHHSVTKOIVVWTGMWIURXCBDHFOQPVXXYVZUDKIFCWIIISIYWYMRYCUBJOVXRKMJOOTIVNQBPXYVKJEUGYNPGXWLVPEGBHWLGXQCHHKFJGDZSJVXCBDXVVVVSWMVJWPOKMJKWTSDRNZTNSDQJYQTOUXFFSNEWLVIARKUEUFFUYIEIRAVYFPRZUVRDXCLBJOUGIVIVOGEGFTKDLGRCXCCVMMZBADKEKGMTWLXKVLVRHVZJMQPKMKCMTVDXVIPKCWSIZIPCKEMVXTYYIUKPCDVLZIMTDRSBCCVRHVJGITKGSOKWQPDVZEBTILRXKWRBRZVYQUYZRYZAVYUMTRTXSHAFWPKDOIIKPGBHPZXQQEVVRDQHSFEKZWPCRJKYMCNGVVJAVYWLVTPTSVXZRVPYEMCZBAGHVVWCPNDQVEBCVWSKYMVRHWZJTWDKIIRXRVLIUKPGNRGKIQPORJKYMRBLIJKPQYGSWSMNSHZVIAVYWLVKPTOHARCTUYIXYVKJEUGYKPGPLVJKECVOXYVLKCWMETBKYQFVKEGOQWGZZKDXECRVFCHGLCITMOEJJMUGDWIVUQFHHSPBJOGSTKZKXHSWKPGZUMVJBJYRHFWINVEICZMXOUWJZVEODPCSMNSHZVIAYOUIRGITDRJKYMRBLIJKPQYGXYVZGMRYCUJGXRHZJBKXFXZFVDOWAVVVCZUMVJBCXGEGVIUKQXRCTYOUIVHCCVLRKYMUSJLKFNIYGXYVAGMRRUNINVFPRZUGNWLRKWPVBXYVXQZHGFLTFSQXVIXTOWWTIQRDXVVCCVRHVWFCPNQSVMQFOQGVFNVRLWGIQPMLTCVQPDKISZJNOEYKWWWXGQREGRKVWRXMUDKEKTTCSPIUKPGMRQDFVOKQGFLTFSQXVIXTOWWTIQRDXVVKPGDKMIUECVOARJBJOFPRZUVRDXFETADKIGFXGMRYCUAWWPSERKQEQGZCEJSFLDVIPDWLRKVQCHGLCITMRYETQNMRYCULKMWEKVWTNHVJKWVRHGYLZEROYKYMTEVIUJKTSSXLIMCXGLZJBQBBXFUMUDUSPKPKCEICZMHKVWVIBKXJXYRBVRHGYLZERVLFLTFLHWLSRGMWXFKPGCWEKVJADHEIZVINRAEKPGCHXYIMGGDPCJBJOZLFCMYYUPUTPCXJIUWWTDKIIFUCXFEKYWNSFGYLZERDYKYWTSWCNRAUDUMGGMFPUSDKPGZDTRTGCXGTCRKGNLRKFBJOKEEUAQPWLVEWDSOMKP'\n"}︡{"done":true}︡
︠cf9b4059-569f-4781-b8a2-40dd22d6ca76i︠
%md
Use the function guess_vigenere_key_length(X,k), where X is the ciphertext, and where k is your guess for the length of the key.  This will show you k total numbers.  What happens is that the original string X gets divided into every k-th character, and then the index of coincidence is computed for each of these substrings.  For example, if you were to guess k = 4 (which you shouldn't, because you know the key length is 7, 8, 9, 10, or 11), you would get the index of coincidence for the substring of characters in position 0 mod 4, in position 1 mod 4, in position 2 mod 4, and in position 3 mod 4.  If it's English, the index of coincidence for each of these should be around .0685.  If it's random letters, the index will be smaller, closer to .04 on average.
︡9a3eb666-aad7-4a64-9f88-9352424d4d1c︡{"done":true,"md":"Use the function guess_vigenere_key_length(X,k), where X is the ciphertext, and where k is your guess for the length of the key.  This will show you k total numbers.  What happens is that the original string X gets divided into every k-th character, and then the index of coincidence is computed for each of these substrings.  For example, if you were to guess k = 4 (which you shouldn't, because you know the key length is 7, 8, 9, 10, or 11), you would get the index of coincidence for the substring of characters in position 0 mod 4, in position 1 mod 4, in position 2 mod 4, and in position 3 mod 4.  If it's English, the index of coincidence for each of these should be around .0685.  If it's random letters, the index will be smaller, closer to .04 on average."}
︠acf07285-aaca-44cc-93d8-dc4f20ced931s︠
guess_vigenere_key_length(X,7)
︡a9da7fb2-a6e6-404e-bee5-39c846fb246e︡{"stdout":"[0.07374241995789739, 0.066683423927273472, 0.074433656957928793, 0.071459243200217848, 0.064597739922415257, 0.071892393320964754, 0.074443413729128008]\n"}︡{"done":true}︡
︠2c72ec45-9062-4c86-b142-0c0365883158︠
︡1e8feff1-fd27-41aa-804e-667250688eae︡
︠005eae81-3a2b-4b5b-9465-43661c8d8b08s︠
for i in range(7,12):
    vfreq = guess_vigenere_key_length(X,i)
    vfreq[1]
    

︡188add41-a787-4705-8e8e-cd91b3cf938a︡{"stdout":"0.066683423927273472\n0.047242798353909467\n0.044444444444444446\n0.045353223593964334\n0.047488984513901419\n"}︡{"done":true}︡
︠af15d2ee-ef8b-4940-a348-1c1af553a445i︠
%md
Once you think you know what the key length is, you still need to find out what the shift amounts were.  Use the function<br>separate(X,a,k)<br>which will pick out the characters in positions a modulo k.
︡4e83a50c-1a53-48bc-81d1-61e9f3126315︡{"done":true,"md":"Once you think you know what the key length is, you still need to find out what the shift amounts were.  Use the function<br>separate(X,a,k)<br>which will pick out the characters in positions a modulo k."}
︠bc7621b4-62cd-4b00-8e6b-c22032b3c5d1s︠
str1 = separate(X,1,7)
︡14b4f94f-cada-4ef3-9891-7c99645e1397︡{"done":true}︡
︠21d6108f-a73e-4325-a52a-17fc5337a80as︠
str1
︡d9d1d35a-37ab-404b-b87d-d8fa1d4b9d7c︡{"stdout":"'LMMSIWLRXQMXIXXRXSEJGILAIVVAIXEMYIZXPQEPGARXRWPHCXXPWIWYYHKTYVECQPLHTPVEXWILBMWIPLWYAMTAGAGIWGTWRSRMLMMPXGSIJQXFLWRPMRLLGEIVMVTPLHVIHXISYXTXGLWHSXMMRQXLEEPXGEGMEXVMXSEILSVSVRZRMAIPVEJVLXMVQSWIIGJISZLAXGVXMFWEGEWHSSMHIWPZIJIXYHXAMEXIRLXRPLXGXWVVSGWTIYQWEIQGXWVMAPXIYSGLLGYYEVGYIXLXSIWXGLWXEEAXPLPIIEGYCMSTTRELM'\n"}︡{"done":true}︡
︠a0953ca6-87f7-4c32-b56a-02d599d9b3dei︠
%md
To compare to English, you can use<br>numpy.dot(getfreq(Y),englishfreq)<br>This computes a dot product of the letter frequencies in a string Y with letter frequencies in average English.  Again, if Y is in English, we expect a number around .0685.  If Y is not decrypted, we expect a number closer to .04.
︡68feb5ad-4eb5-48b6-a38c-41534008fb99︡{"done":true,"md":"To compare to English, you can use<br>numpy.dot(getfreq(Y),englishfreq)<br>This computes a dot product of the letter frequencies in a string Y with letter frequencies in average English.  Again, if Y is in English, we expect a number around .0685.  If Y is not decrypted, we expect a number closer to .04."}
︠0f72227b-66b5-47de-a142-18204bbee65ds︠
numpy.dot(getfreq(str1),englishfreq)
︡cd4ea99b-c602-4aa8-bdcb-63b4cb1f3a00︡{"stdout":"0.039233009708737866\n"}︡{"done":true}︡
︠6da28afa-1d87-4171-8a4c-495c9b01e980s︠
shift(str1,1)
︡0a5f6acc-d3ef-471e-8a95-0761756ed617︡{"stdout":"'MNNTJXMSYRNYJYYSYTFKHJMBJWWBJYFNZJAYQRFQHBSYSXQIDYYQXJXZZILUZWFDRQMIUQWFYXJMCNXJQMXZBNUBHBHJXHUXSTSNMNNQYHTJKRYGMXSQNSMMHFJWNWUQMIWJIYJTZYUYHMXITYNNSRYMFFQYHFHNFYWNYTFJMTWTWSASNBJQWFKWMYNWRTXJJHKJTAMBYHWYNGXFHFXITTNIJXQAJKJYZIYBNFYJSMYSQMYHYXWWTHXUJZRXFJRHYXWNBQYJZTHMMHZZFWHZJYMYTJXYHMXYFFBYQMQJJFHZDNTUUSFMN'\n"}︡{"done":true}︡
︠10d07580-cccc-4391-b673-4f53cbe89552i︠
%md
Try every possible shift of the characters in Y, and see which shift most closely matches English.  The following code creates a length 26 vector (corresponding to the 26 possible shifts)<br>[numpy.dot(getfreq(???something involving j???),englishfreq) for j in range(0,26)]<br>Hint.  Use the function shift(Y,n), where Y is a string and where n specifies how much to shift by.
︡3ec2cd34-1eac-4abe-966d-13cc990799c1︡{"done":true,"md":"Try every possible shift of the characters in Y, and see which shift most closely matches English.  The following code creates a length 26 vector (corresponding to the 26 possible shifts)<br>[numpy.dot(getfreq(???something involving j???),englishfreq) for j in range(0,26)]<br>Hint.  Use the function shift(Y,n), where Y is a string and where n specifies how much to shift by."}
︠872789f1-9fb4-49aa-a4a0-5bc7de0fe061s︠
[numpy.dot(getfreq(shift(str1,j)),englishfreq) for j in range(0,26)]
︡274b1bfe-fe08-469e-8351-5bab26d0c4e3︡{"stdout":"[0.039233009708737866, 0.031614886731391581, 0.037902912621359225, 0.03803883495145631, 0.032724919093851133, 0.033491909385113268, 0.038938511326860832, 0.05206796116504854, 0.043618122977346262, 0.039132686084142387, 0.03518770226537217, 0.046258899676375406, 0.033307443365695799, 0.035278317152103555, 0.033255663430420704, 0.040857605177993521, 0.03294822006472492, 0.033796116504854347, 0.044873786407766986, 0.037012944983818769, 0.034352750809061486, 0.039349514563106792, 0.064106796116504841, 0.038255663430420715, 0.035258899676375403, 0.030135922330097095]\n"}︡{"done":true}︡
︠64602553-b433-46e3-9064-85b6dd74ff1fs︠
str1shift=shift(str1, 23)
︡cd4f7d5b-dcb5-4e4f-b6c4-6a7002bafbb5︡{"done":true}︡
︠80fe1432-b04e-4363-bce2-e77f47c9fdd2s︠
str1shift
︡f795fb35-a469-4d79-b26c-f6327ff5e4f2︡{"stdout":"'IJJPFTIOUNJUFUUOUPBGDFIXFSSXFUBJVFWUMNBMDXOUOTMEZUUMTFTVVEHQVSBZNMIEQMSBUTFIYJTFMITVXJQXDXDFTDQTOPOJIJJMUDPFGNUCITOMJOIIDBFSJSQMIESFEUFPVUQUDITEPUJJONUIBBMUDBDJBUSJUPBFIPSPSOWOJXFMSBGSIUJSNPTFFDGFPWIXUDSUJCTBDBTEPPJEFTMWFGFUVEUXJBUFOIUOMIUDUTSSPDTQFVNTBFNDUTSJXMUFVPDIIDVVBSDVFUIUPFTUDITUBBXUMIMFFBDVZJPQQOBIJ'\n"}︡{"done":true}︡
︠d5007666-567f-41e6-bb8d-431e370fb523s︠
str1 = separate(X,1,7)
z=[numpy.dot(getfreq(shift(str1,j)),englishfreq) for j in range(0,26)]
z.index(max(z))
︡c1137663-0b87-45c5-bd25-b6ab23b98838︡{"stdout":"22\n"}︡{"done":true}︡
︠62ccbbf3-d62d-4315-ab26-e41a3e7ca894ss︠
str2 = separate(X,2,7)
z=[numpy.dot(getfreq(shift(str1,j)),englishfreq) for j in range(0,26)]
z.index(max(z))
︡d685af48-a4a9-4f0a-adba-a6026712bc87︡{"stdout":"22\n"}︡{"done":true}︡
︠343b8c50-b564-4eb0-9a13-87299ab64213s︠
shift = []
︡a67fe3b9-69bf-4e41-a9c2-8b1d4645e644︡{"done":true}︡
︠66bb2c74-a3db-4095-9dc0-a14ea44c771bs︠
for i in range(0,7):
    str = separate(X,i,7)
    z = [numpy.dot(getfreq(shift(str,j)),englishfreq) for j in range(0,26)]
    z.index(max(z))

︡55fe2ed8-5bc5-4607-92b0-909df22d8800︡{"stdout":"23\n22\n9\n9"}︡{"stdout":"\n18\n24\n16"}︡{"stdout":"\n"}︡{"done":true}︡
︠ad45c2aa-d46f-4d02-968b-fac31ef0d7e1︠
︡dbc00489-4802-41ab-aa98-a169adf0ad80︡
︠52d91e33-b9c3-4881-ae4b-e04b1d098050s︠
freq = [23, 22,9,9,18,24,16]
freq
︡0d5283cd-7e6a-42d0-a1e1-c82eee5557e1︡{"stdout":"[23, 22, 9, 9, 18, 24, 16]\n"}︡{"done":true}︡
︠28c4f0dc-5b54-49dc-8094-df5340b8ea97i︠
%md
What shift amount corresponded to the biggest value?  If z is a vector of numbers, you can use<br>max(z)<br>to get the maximum value, and even better, you can use<br>z.index(max(z))<br>to find the position where it occurred.  (Again, we're expecting this maximum to be approximately .0685.)  Why do we care about this index?  Because this index is the shift amount we're supposed to use to get back to regular English.
︡d72d6754-a7e1-4f4e-aded-1d64a96f03e5︡{"done":true,"md":"What shift amount corresponded to the biggest value?  If z is a vector of numbers, you can use<br>max(z)<br>to get the maximum value, and even better, you can use<br>z.index(max(z))<br>to find the position where it occurred.  (Again, we're expecting this maximum to be approximately .0685.)  Why do we care about this index?  Because this index is the shift amount we're supposed to use to get back to regular English."}
︠55a5753b-d5f8-4cb9-aa6d-b041a2a11629i︠
%md
Once you think you know the k different shift amounts, you can use<br>vigenere(X,[a0,a1,...,a(k-1)])<br>to attempt to decrypt the ciphertext, where a0, a1, ..., a(k-1) are the shift amounts.  If it helps, you can use a for loop to automate going through each of the k different substrings.  for loops in Python look like<br>for b in range(0,4):<br>&nbsp;&nbsp;&nbsp;???one or more indented lines involving b, which in this example goes b = 0, then b = 1, then b = 2, and lastly b = 3.
︡049a33b5-4890-4e8e-a188-a168b20b6e0a︡{"done":true,"md":"Once you think you know the k different shift amounts, you can use<br>vigenere(X,[a0,a1,...,a(k-1)])<br>to attempt to decrypt the ciphertext, where a0, a1, ..., a(k-1) are the shift amounts.  If it helps, you can use a for loop to automate going through each of the k different substrings.  for loops in Python look like<br>for b in range(0,4):<br>&nbsp;&nbsp;&nbsp;???one or more indented lines involving b, which in this example goes b = 0, then b = 1, then b = 2, and lastly b = 3."}
︠4824ab68-e06e-4f86-8ba2-cd860eb5143cs︠
vigenere(X,freq)
︡19cf817e-f1e7-477c-b809-41c87adc82ae︡{"stdout":"'thepoliticalramificationsoftheaddresstothechristiannobilitywereimmensesincethetreatisewasmostlypoliticalinnatureitcalledonthestatetoreformthechurchbecausethestatewasabovethechurchthetreatisewasaddressedtothegermannobilitybecauselutherbelievedonlytheycouldreformtheromancatholicchurchwhichwasdependentontheirfinancialsupportlutheradamantlyarguedthatthetemporalpowerisordainedofgodsonosecularissueshouldbedelegatedtopapalcourtsbutratherhandledbythegermannobilitylutherbasedonthispremiselutherarguedthattheinterdictshouldbeabolishedandexcommunicationshouldbeusedonlyinsuchcasesasscriptureallowstheshiftfrompapalpowertosecularpowerindecidingreligiousissuescreatedproblemslaterinthereformationspecificallythequestionofusingsecularmilitaryforcestostopanewreligionfromforminganotherproblemwithluthersargumentsresultedinhistwokingdomstheideathatchurchandstateareseparaterealmswithseparateresponsibilitiesthisaddedbeliefreflectedaparadoxinlutherstheologyforhowcouldthestatehelpreformthechurchwhentheyweresupposedtobetwoseparateentitiesonehistorianwilliamshirertookluthersparadoxsofarastoclaimthatluthercreatedapoliticalpassivitythatpermittedtheriseofhitlerlaterhistorianshaveprovedthatshirertookluthersparadoxtoofarintryingtoprovehisownhistoricalviewofhitlerthereligiousramificationsoftheaddresstothechristiannobilitywerefundamentaltothethesislutherappliedthedoctrineofthepriesthoodofbelieverstothethreewallsofthechurchthefirstwallthedistinctionbetweenspiritualandsecularclasseswasremovedbythedoctrineofthepriesthoodofallbelieverssinceallbelieverswereapartofthepriesthoodtherecouldbenodistinctionbetweenapriestandapeasantallwereequalinthesightofgodthesecondwallclaimedthatonlythepopecouldinterpretscripturelutherfoundnoevidenceofthisprincipleinthebiblebutfoundmanypassagesthatclaimedthecommonmancouldinterpretscripturethethirdwallwastheclaimthatonlythepopecouldsummonacouncilwhichmeantthatnosecularcouncilcoulddictateorderstothechurchlutherusedscriptureandhistorytodestroythisbeliefassertingthatthechurchshouldbesubjecttothestatebytearingdownthesethreewallsthewholeworldchangedfortheromancatholicchurchauthoritywasstrippedfromthepapacyandplacedintothehandsofthenobility'\n"}︡{"done":true}︡
︠30f07ab8-1192-4242-bb49-2ad5bd70613di︠
%md
There's no need to post the decrypted message on Piazza (maybe someone else is working on that same message), instead just leave it here in this worksheet.
︡e0f775d4-d3e8-4e47-b09c-a63628aa0050︡{"done":true,"md":"There's no need to post the decrypted message on Piazza (maybe someone else is working on that same message), instead just leave it here in this worksheet."}
︠45718c1e-c6ab-4832-a220-92ccd4b25f45︠









