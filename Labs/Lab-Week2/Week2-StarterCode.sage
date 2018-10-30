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

englishfreq = [0.082, 0.014, 0.028, 0.038, 0.131, 0.029, 0.02, 0.053, 0.064, 0.001, 0.004, 0.034, 0.025, 0.071, 0.08, 0.02, 0.001, 0.068, 0.061, 0.105, 0.025, 0.009, 0.015, 0.002, 0.02, 0.001]

# this function removes all punctuation and spaces from X, and makes all the letters lowercase.
def onlyletters(X):
    return filter(letterset.__contains__, X).lower()

def shift(X,n):
   return shiftencrypt(X,n)

# this function encrypts the string X using a shift cipher (also known as a Caesar cipher).
# it currently prevents a shift of 0.
def shiftencrypt(X,n=-1):
   X = onlyletters(X).upper()
   if n == -1:
      shiftamt = random.randint(1,25)
   else:
      shiftamt = n
   output = ''.join(chr((ord(ch)-ord('A')+shiftamt)%26+ord('A')) for ch in X)
   return output

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

def getfreq(X):
   X = onlyletters(X).upper()
   cipherfreq = countsubstrings(X,1)
   for ch in letterset:
      if ch.isupper() and ch not in cipherfreq:
         cipherfreq[ch] = 0
   totalchars = len(X)
   heightlist = []
   for i in range(ord('A'),ord('Z')+1):
      heightlist.append((cipherfreq[chr(i)]/totalchars)+.0)
   return heightlist

def vigenere_encrypt(X, keyword):
    X = onlyletters(X).upper()
    keyword = onlyletters(keyword).lower()
    keylength = len(keyword)
    shifts = [ord(ch) - ord('a') for ch in keyword]
    output = ''.join(chr((ord(X[i])-ord('A')+shifts[i%keylength])%26+ord('A')) for i in range(0,len(X)))
    return output

def vigenere(X,key):
      keylength = len(key)
      shifts = key
      output = ''.join(chr((ord(X[i])-ord('A')+shifts[i%keylength])%26+ord('A')) for i in range(0,len(X)))
      return output.lower()

def separate(X,a,m):
      holder = []
      for i in range(0,len(X)):
            if (i%m) == (a%m):
                  holder.append(X[i])
      output = ''.join(holder)
      return output

def guess_vigenere_key_length(X,k):
    substrings = [separate(X,a,k) for a in range(0,k)]
    freqs = [numpy.dot(getfreq(y),getfreq(y)) for y in substrings]
    return freqs