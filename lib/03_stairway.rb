def dice 
    print "Appuyer sur enter pour lancer le dé."
    gets.to_i
    roll = rand(6)+1
    puts "Le dé affiche = #{roll}"
    return roll
end

def play(roll)
    pos = 0
    if roll == 5 || roll == 6
        pos += 1
    elsif roll == 1
        pos -= 1
    else 
        pos == pos
    end
    return pos
end

def boucle(roll, pos)
    state = 0
    while state < 10
        puts "> Tu es à la marche #{state}, plus que #{10-state} marche(s)."
        roll = dice
        pos = play(roll)
        state += pos 
        if state < 0
            state = 0
        end
    end
    puts "> Tu es à la marche 10."
    puts "> Congratulations !"
    puts "---THE END---"
    puts "      / )"
    puts "     ' /"
    puts "---' (_____"
    puts "         ((__)"
    puts "        ((___)"
    puts "        ((__)"
    puts "--.___((_)"
end

def perform 
    roll = dice
    pos = play(roll)
    boucle(roll, pos)
end
perform