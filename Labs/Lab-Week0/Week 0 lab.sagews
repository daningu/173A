︠d9bfac0f-b65a-4e34-b2b0-c62287f69e3fi︠
%md
<div align='center'>****<font size=5>Week 0 lab</font>****</div><br>
Try creating a new cell by clicking the horizontal line at the bottom of this one.  Once you have a new cell, try evaluating some math in it.  Hit "return" to get a new line, and hit "Shift + return" to evaluate.
︡e3f18b56-e0e4-4efb-ab93-4d0c453213ec︡{"done":true,"md":"<div align='center'>****<font size=5>Week 0 lab</font>****</div><br>\nTry creating a new cell by clicking the horizontal line at the bottom of this one.  Once you have a new cell, try evaluating some math in it.  Hit \"return\" to get a new line, and hit \"Shift + return\" to evaluate."}
︠7a784f99-f0ed-44a6-8dee-b6a275f0a6efi︠
%md
One of the main ideas for attacking classical cryptosystems is the idea of ****frequency analysis****, which means comparing the letter distributions in ciphertext with the letter distributions in plain English.  The image below shows the relative frequency of the different letters in English.<br>
<img src='english-frequency.png' width="30%" height="30%">
︡f19a995f-204a-49f7-8391-52007e419a42︡{"done":true,"md":"One of the main ideas for attacking classical cryptosystems is the idea of ****frequency analysis****, which means comparing the letter distributions in ciphertext with the letter distributions in plain English.  The image below shows the relative frequency of the different letters in English.<br>\n<img src='english-frequency.png' width=\"30%\" height=\"30%\">"}
︠af64d5e7-1a61-42e6-8a98-8b1fac6e170ai︠
%md
We're going to work with some custom functions written for Math 173.  The file should already be available to you, it is called Week0-StarterCode.sage.  All you have to do is tell Sage that you want it to load the functions from that file.  To do that, create a new cell (by clicking on the horizontal line below this one) and evaluate the following: attach("Week0-StarterCode.sage") To check that you did it correctly, try evaluating "letterset" (with no quotation marks)... if you've successfully attached our starter code, you should see 52 letters, 26 upper-case and 26 lower-case.
︡ed5c4621-c862-4d43-b35b-579335bdc5cc︡{"done":true,"md":"We're going to work with some custom functions written for Math 173.  The file should already be available to you, it is called Week0-StarterCode.sage.  All you have to do is tell Sage that you want it to load the functions from that file.  To do that, create a new cell (by clicking on the horizontal line below this one) and evaluate the following: attach(\"Week0-StarterCode.sage\") To check that you did it correctly, try evaluating \"letterset\" (with no quotation marks)... if you've successfully attached our starter code, you should see 52 letters, 26 upper-case and 26 lower-case."}
︠beec3928-39cd-40b4-96da-45b822a6eb3es︠
attach("Week0-StarterCode.sage")
letterset
︡78f21295-0a59-42b1-87d7-560bdc408eba︡{"stdout":"frozenset(['A', 'C', 'B', 'E', 'D', 'G', 'F', 'I', 'H', 'K', 'J', 'M', 'L', 'O', 'N', 'Q', 'P', 'S', 'R', 'U', 'T', 'W', 'V', 'Y', 'X', 'Z', 'a', 'c', 'b', 'e', 'd', 'g', 'f', 'i', 'h', 'k', 'j', 'm', 'l', 'o', 'n', 'q', 'p', 's', 'r', 'u', 't', 'w', 'v', 'y', 'x', 'z'])\n"}︡{"done":true}︡
︠2abfb432-9317-4f1f-a0af-46f111114100i︠
%md
Now try encrypting some text using the shift cipher.  I can't remember what the function is called!  Type shift (the word, not the key) and then hit the tab button to see possible completions!  The function will take 2 inputs, a string X that you want to encrypt followed by the amount you want to shift by.  Does it work?  (Tips: strings need to be inside of quotation marks, and separate your inputs with a comma.)  This function will remove all spaces and punctuation from your original string.
︡99eb8829-7809-4274-95e4-601c17e9695c︡{"done":true,"md":"Now try encrypting some text using the shift cipher.  I can't remember what the function is called!  Type shift (the word, not the key) and then hit the tab button to see possible completions!  The function will take 2 inputs, a string X that you want to encrypt followed by the amount you want to shift by.  Does it work?  (Tips: strings need to be inside of quotation marks, and separate your inputs with a comma.)  This function will remove all spaces and punctuation from your original string."}
︠c623ae25-220a-4e4b-a4c3-e98af4230789s︠
mesg = shiftencrypt("The rabbit-hole went straight on like a tunnel for some way, and then dipped suddenly down, so suddenly that Alice had not a moment to think about stopping herself before she found herself falling down a very deep well", 15)

︡188e882c-f6d0-4b85-9bb1-197629e7d9eb︡{"done":true}︡
︠26188f0b-0879-4c3e-b1e6-a9aa8654dcf9s︠
mesg
︡28b7c40a-7221-4456-b957-4dfb57cf9844︡{"stdout":"'IWTGPQQXIWDATLTCIHIGPXVWIDCAXZTPIJCCTAUDGHDBTLPNPCSIWTCSXEETSHJSSTCANSDLCHDHJSSTCANIWPIPAXRTWPSCDIPBDBTCIIDIWXCZPQDJIHIDEEXCVWTGHTAUQTUDGTHWTUDJCSWTGHTAUUPAAXCVSDLCPKTGNSTTELTAA'\n"}︡{"done":true}︡
︠cf5d8757-ab7c-4cdc-99bf-9953d083decfi︠
%md
The output of this function is an encrypted string.  To save the output, say under the variable name Y, you evaluate Y = shift...  That's convenient because now you can refer to this ciphertext by the single letter Y, without copying and pasting a big block of text.
︡a9d76d3f-8892-4040-a638-d02d25874f65︡{"done":true,"md":"The output of this function is an encrypted string.  To save the output, say under the variable name Y, you evaluate Y = shift...  That's convenient because now you can refer to this ciphertext by the single letter Y, without copying and pasting a big block of text."}
︠b2e869de-c931-4011-af46-183300e813a7︠

︡1379f896-b6f2-4a8d-84e1-773da9a53b79︡{"done":true}︡︡
︠238dd135-5ac3-4fea-9b88-1a1746ef61a8i︠
%md
Is the text long enough to be decrypted using frequency analysis?  Try evaluating breakshiftcipher(Z), where Z is whatever variable you named your ciphertext.  This will give you a dropdown menu that lets you choose a shift amount.  Try to get the letter distribution in your text to look like the letter distribution in common English.  You can't expect them to be identical, but if your plaintext was long enough, the two should be pretty close.  The "decryption" that corresponds to this shift amount will be displayed at the bottom.
︡9a21b224-7d4a-45cc-916b-74b5cf17faa3︡{"done":true,"md":"Is the text long enough to be decrypted using frequency analysis?  Try evaluating breakshiftcipher(Z), where Z is whatever variable you named your ciphertext.  This will give you a dropdown menu that lets you choose a shift amount.  Try to get the letter distribution in your text to look like the letter distribution in common English.  You can't expect them to be identical, but if your plaintext was long enough, the two should be pretty close.  The \"decryption\" that corresponds to this shift amount will be displayed at the bottom."}
︠af376dcb-787c-498b-a8a3-5d9a666a1d10s︠
breakshiftcipher(mesg)
︡9b7bf9dd-eb5b-445d-b791-c4cdb8452566︡{"interact":{"controls":[{"button_classes":null,"buttons":false,"control_type":"selector","default":25,"label":"shift_amount","lbls":["-25","-24","-23","-22","-21","-20","-19","-18","-17","-16","-15","-14","-13","-12","-11","-10","-9","-8","-7","-6","-5","-4","-3","-2","-1","0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25"],"ncols":null,"nrows":null,"var":"shift_amount","width":null}],"flicker":false,"id":"f034fcf0-91bf-479b-bec8-a41403a4a65c","layout":[[["shift_amount",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠63be7ae1-f013-49f1-b936-ae3df4570e5di︠
%md
Once you have text that you think is breakable (don't make it too short!), you should post your ciphertext onto the Piazza forum, then choose another student's ciphertext to decrypt.  Once you've successfully decrypted someone's ciphertext, you are done with this lab!  (Tip/warning: make sure your ciphertext is in all capital letters.)
︡bd783bdc-fb28-4287-965d-c5addee29da7︡{"done":true,"md":"Once you have text that you think is breakable (don't make it too short!), you should post your ciphertext onto the Piazza forum, then choose another student's ciphertext to decrypt.  Once you've successfully decrypted someone's ciphertext, you are done with this lab!  (Tip/warning: make sure your ciphertext is in all capital letters.)"}
︠535c07d3-c239-4d06-9efc-7b4281d6c49as︠

cipher = "LDPDQHAFKDQJHVWXGHQWIURPJHUPDQBDQGYHUBHAFLWHGIRUWKLVFODVVKHUHLQLUYLQH"
︡d9eb4bea-5f42-4007-b5fb-c3eaf4ac5c06︡{"done":true}︡
︠e05c3842-4f37-4837-b0ed-3d521417d60cs︠
cipher
︡0dba89e1-a314-4e7e-8e97-fb3bdce35c31︡{"stdout":"'LDPDQHAFKDQJHVWXGHQWIURPJHUPDQBDQGYHUBHAFLWHGIRUWKLVFODVVKHUHLQLUYLQH'\n"}︡{"done":true}︡
︠9f80d6bb-57a5-4a0f-927c-a42a89b5cc1cs︠
breakshiftcipher(cipher)
︡ca2a85d7-79a9-4911-a5b6-921efd71215d︡{"interact":{"controls":[{"button_classes":null,"buttons":false,"control_type":"selector","default":25,"label":"shift_amount","lbls":["-25","-24","-23","-22","-21","-20","-19","-18","-17","-16","-15","-14","-13","-12","-11","-10","-9","-8","-7","-6","-5","-4","-3","-2","-1","0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25"],"ncols":null,"nrows":null,"var":"shift_amount","width":null}],"flicker":false,"id":"f54e720f-de94-43f2-8b44-aa5eee96ba54","layout":[[["shift_amount",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠a7e181ff-b16b-4f64-b5ff-2b0a911ee04fs︠


pow(3,6,7)
︡e609ecea-4a5e-494a-bebe-ecce66011790︡{"stdout":"1\n"}︡{"done":true}︡
︠2b2580ee-f44e-458a-b3c8-cacf00e2c5ccs︠
pow(4,2,7)
︡b390c1a3-8fad-4f37-88f4-508d27cbddac︡{"stdout":"2\n"}︡{"done":true}︡
︠58e2bbec-2566-43b3-96c7-bc360c5eef96s︠
pow(5,6
  ,7)
︡c4c104d7-b7cd-49a3-b4fd-4a2db1e8e9e5︡{"stdout":"1\n"}︡{"done":true}︡
︠a8be7e7f-52ae-4ed8-92eb-42e7cd18bbe4s︠
pow(6,3,8)
︡28176037-badd-4e7b-8281-9f9d5323c437︡{"stdout":"0\n"}︡{"done":true}︡
︠72c9370b-c6e1-4bcc-b50d-1cf8ad790f80s︠
pow(6,6)
︡121b979c-e7ae-4ce0-9ebf-b5110b0a65dc︡{"stdout":"46656\n"}︡{"done":true}︡
︠b317e39e-d9b1-40f9-964b-8bb06373fe00s︠
pow(6,2,7)
︡1e797cf1-fb0c-4cb6-aa14-8d1c2bfd4426︡{"stdout":"1\n"}︡{"done":true}︡
︠43c6f834-6e2e-446b-a279-f91163cb02dc︠









