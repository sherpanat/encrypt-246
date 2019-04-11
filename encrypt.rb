def encrypt(sentence)
  alphabet = ("A".."Z").to_a
  sentence.split("").map do |caracter|
    caracter_upcased = caracter.upcase
    old_index = alphabet.index(caracter_upcased)
    old_index ? alphabet[old_index - 3] : caracter_upcased
  end.join
end

# false
#on fait un tableau de lettres de l'alphabet
#on découpe la phrase en tableau de lettres
#pour chacune des lettres
#on recupère l'index de chacune des lettre
#si c'est un espace on ne fait rien
#on soustrait 3 à l'index
#on recupère dans l'alphabet la lettre du nouvel index
#on retourne cette nouvelle lettre
#on join tout ça
