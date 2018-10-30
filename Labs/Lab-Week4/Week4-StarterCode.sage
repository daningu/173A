import string

# letterset records the letters a-zA-Z
letterset = frozenset(string.ascii_letters)

# this function removes all punctuation and spaces from X, and makes all the letters lowercase.
def onlyletters(X):
    return filter(letterset.__contains__, X).lower()

def enciphervigenere(X,key):
  X = onlyletters(X)
  if isinstance(key,str):
    key = stringtoint(key)
  if isinstance(key,(int,Integer)):
    key = key.digits(26)
  if isinstance(key,list):
    return deciphervigenere(X,[-elt for elt in key]).upper()

def deciphervigenere(X,key):
  X = onlyletters(X)
  if isinstance(key,str):
    key = stringtoint(key)
  if isinstance(key,(int,Integer)):
    key = key.digits(26)
  X = X.upper()
  keylength = len(key)
  shifts = key
  output = ''.join(chr((ord(X[i])-ord('A')-shifts[i%keylength])%26+ord('A')) for i in range(0,len(X)))
  return output.lower()




      
