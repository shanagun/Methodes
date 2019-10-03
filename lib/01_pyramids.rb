def half_pyramid
    puts "Combien d'étages souhaites-tu ?"
print "> "
random = gets.to_i
n = 1
    while n <= random
      puts "#" * n
      n = n + 1
    end
end


def ask_etages 
    puts "Combien d'étages souhaites-tu?"
    stairs = gets.to_i
    while  stairs < 1 || stairs > 25 || stairs.even?
        if stairs < 1 || stairs > 25
            puts "Entre un nombre compris entre 1 et 25."
        elsif stairs.even? 
            puts "Entre un nombre impair."
        end
        stairs = gets.to_i
    end
    etages = stairs / 2 + 1
return etages 
end

def full_pyramid(etages)
    tab = []
    x = "#"
    while etages > 1 do #la boucle s'arrêtera une fois qu'elle aura atteint l'étage 1 c-à-d (2"étage" - 1)
space = " " * (etages - 1)
eta = space + x
etages -= 1
x += "##"

tab << eta #mettre eta dans le tableau vide tab[]
    end
    puts tab
end

def pyramid_reverse(etages)
    tab = []
    x = "#"
    while etages > 0 do #la boucle s'arrêtera une fois qu'elle aura atteint l'étage 0 c-à-d (1"étage" - 1)
space = " " * (etages - 1)
eta = space + x
etages -= 1
x += "##"

tab << eta #mettre eta dans le tableau vide tab[]
    end
    puts tab.reverse
end

def wtf_pyramid
etages = ask_etages
full_pyramid(etages)
pyramid_reverse(etages)
end

wtf_pyramid
