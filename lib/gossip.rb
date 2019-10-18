#require 'pry'
require 'csv'


class Gossip
  attr_reader :author, :content #variables d'instance

  def initialize(author, content) #Ces attributs (des variables d'instance) seront déclarés à l'initialisation de façon classique
    @content = content
    @author = author #En gros, quand on va vouloir créer un potin via le model Gossip, ça va se passer ainsi : my_gossip = Gossip.new("auteur", "ceci est un exemple content") #=> Crée une instance de potin, sauvergardée juste dans cette variable. Et my_gossip.save #=> Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV. Notre base de données de potins sera rangée dans un fichier gossip.csv qui se trouve dans un dossier db/ (cf. l'arborescence donnée au début). Chaque ligne correspond à un potin, avec en colonne 1 le author et en colonne 2 le content.
  end

  def save
    file = File.expand_path('../../db/gossip.csv', __FILE__) #chemin du fichier gossip.csv
    CSV.open(file, "a+") do |new_row| #a+: ajoute une ligne (row)
        new_row << [@author, @content] #  chaque nouvelle ligne, on affiche auteur puis content
    end
    #ou avec JSON : def save_gossip
    #File.open("gossip.json","a+") do |f|
    #      f.write(@gossip_array.to_json)
    #end
  end

  def self.all
    all_gossips = [] # 1)création d'un array vide qui s'appelle all_gossips

    # 2)chaque ligne de ton CSV.each do |ligne|
      # 2-a) gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
      # 2-b) all_gossips << gossip_provisoire - permet de rajouter le gossip provisoire au array
    # end

    return all_gossips # 3)return all_gossips - on renvoie le résultat
  end

end

#binding.pry
