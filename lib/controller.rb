require 'gossip'
require 'view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip #Cette méthode va donc créer un nouvel objet gossip, donc instancer la classe Gossip (le model) avec Gossip.new.
    params = @view.create_gossip  #exécute la méthode create_gossip de la View afin de récupérer les infos de l'utilisateur (= le contenu et l'auteur du nouveau gossip) ;
    gossip = Gossip.new(params[0], params[1])
    #gossip = Gossip.new("Jean-Michel Concierge a dom", "Féfé est de Bordeaux ou Paris") # créé une instance de Gossip avec Gossip.new (on verra comment injecter ici les infos saisies par l'utilisateur) ;
    gossip.save     #demande au model de l'inscrire dans le CSV avec gossip.save.

  end

end
