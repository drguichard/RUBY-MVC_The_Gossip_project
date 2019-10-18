require 'controller'

class Router

  def initialize
    @controller =  Controller.new
    #On veut qu'un "Router.new" lancé par app.rb, crée automatiquement une instance "@controller"
    #c'est une manière pour le routeur d'exécuter une méthode située dans une autre classe : par exemple, en faisant @controller.create_gossip, le routeur passe la main à la classe Controller en exécutant sa méthode create_gossip.
  end
#rappelle-toi que l'on fait "Router.new.perform" dans app.rb

#après initialize, on définit donc perform.
  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"

    while true #boucle while true qui va demander ce que l'utilisateur veut faire en lui proposant 2 choix (utilise ici un case - when). Les 2 choix seront 1) créer un gossip et 4) quitter l'app

      #on affiche le menu
      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1. Je veux créer un gossip"
      puts "2. Afficher tous les potins"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip

      when 2
        puts "Tu as choisi d'afficher tous les gossips"
        @controller.index_gossips

      when 4
        puts "À bientôt !"
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts "Ce choix n'existe pas, merci de ressayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true".
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

      end
    end
  end
end
