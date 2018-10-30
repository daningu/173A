import string
# the string module contains some methods for manipulating strings.
from random import shuffle
# this is used to shuffle the elements in a list.  Note that it shuffles the list itself; it doesn't return a new list with them shuffled.
from itertools import izip
# izip is used to turn two lists into a dictionary.  One list is the inputs, the other list is the outputs.
# presumably the two lists need to be the same length for this to work.
import operator
# The operator module is used to extract key values out of a list.
import random
# the random module is used to produce random integers
from itertools import combinations
import itertools
import numpy

# letterset records the letters a-zA-Z
letterset = frozenset(string.ascii_letters)

# letterfreq lists the letters a-z, listed in decreasing order of frequency, as given in HPS.
letterfreq = list("etaonrishdlfcmugypwbvkxjqz")
letterprops = [['e','.131'], ['t','.105'], ['a','.082'], ['o', '.080'], ['n', '.071'], ['r','.068'], ['i','.064'], ['s','.061'],['h', '.053'],['d','.038'],['l','.034'],['f','.029'],['c','.028'],['m','.025'],['u','.025'],['g','.020'],['y','.020'],['p','.020'],['w','.015'],['b','.014'],['v','.009'],['k','.004'],['x','.002'],['j','.001'],['q','.001'],['z','.001']]

# this function removes all punctuation and spaces from X, and makes all the letters lowercase.
def onlyletters(X):
    return filter(letterset.__contains__, X).lower()

# this function counts substrings of the string X of length n.  It returns a dictionary whose keys are the
# substrings which occur and whose values are the number of times they occur.
def countsubstrings(X,n):
    subdict = {}
    for i in range(0,len(X)-n+1):
        if X[i:i+n] in subdict:
            subdict[X[i:i+n]] += 1
        else:
            subdict[X[i:i+n]] = 1
    return subdict

def compareplots(Y,shift_amount):
      # This was adapted from code found at http://www.packtpub.com/article/plotting-data-sage
      import numpy
      import matplotlib.pyplot as plt
      data = numpy.array([8.15, 1.44, 2.76, 3.79,13.11, 2.92, 1.99, 5.26, 6.35, .13, .42, 3.39, 2.54, 7.1, 8, 1.98, .12, 6.83, 6.10, 10.47, 2.46, .92, 1.54, .17, 1.98, .08])
      listholder = []
      for i in range(0,26):
          listholder.append(i+.5)
      bar_centers = numpy.array(listholder)

      # Plot
      fig, (ax0, ax1) = plt.subplots(ncols=2, sharex=True,figsize=(12,3))
      ax0.bar(bar_centers, data, 
              width=1.0, align='center', color='orange', ecolor='black')
      ax0.set_ylabel('% frequency in English')

      # Label ticks on x axis
      ax0.set_xticks(bar_centers)
      ax0.set_xticklabels(['a', 'b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'])

      cipherfreq = countsubstrings(Y,1)
      for ch in letterset:
         if ch.isupper() and ch not in cipherfreq:
            cipherfreq[ch] = 0
      totalchars = len(Y)
      heightlist = []
      ticklabels = []
      # The +.001 is just a hack to prevent the fact that if Z = 0, then the plot rescaled to take up 25 units, not 26.
      for i in range(ord('A'),ord('Z')+1):
         heightlist.append((100*cipherfreq[chr(i)]/totalchars)+.001)
         ticklabels.append(chr(i))

      data = numpy.array(heightlist)

      # Plot
      ax1.bar(bar_centers, data, 
              width=1.0, align='center', color='blue', ecolor='black')
      ax1.set_ylabel('% frequency in the ciphertext')

      # Label ticks on x axis
      ax1.set_xticks(bar_centers)
      ax1.set_xticklabels(ticklabels)
      plt.show()

def shiftencrypt(X,n=-.1):
   X = onlyletters(X).upper()
   if n == -.1:
      shiftamt = random.randint(1,25)
   else:
      shiftamt = n
   output = ''.join(chr((ord(ch)-ord('A')+shiftamt)%26+ord('A')) for ch in X)
   return output

def breakshiftcipher(X):
   @interact
   def _(shift_amount = selector(range(-25,26), default=0)):
      cipherfreq = countsubstrings(X,1)
      Y = ''.join(chr((ord(ch)-ord('A')+shift_amount)%26+ord('A')) for ch in X)
      compareplots(Y,shift_amount)
      print Y