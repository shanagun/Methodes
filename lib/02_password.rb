def signup
    puts "Définis ton nouveau mot de passe :"
    password=gets.chomp
end 

def login(password)
puts "Quel est ton mot de passe ?"
    input=gets.chomp
    while input != password
        puts "Mot de passe incorrect. Entre ton mot de passe à nouveau."
        input=gets.chomp
    end
    welcome_page
end

def welcome_page
    puts "Benvenue dans ton espace sécurisé."
end

def perform
    password = signup
    input = login(password) 
end
perform