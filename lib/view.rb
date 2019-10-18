class View  #Elle doit demander deux variables (l'auteur et le contenu) à l'utilisateur (via des puts et gets.chomp), puis retourner ces deux variables. C'est tout.

  def create_gossip
    puts "Entre ton nom d'auteur :"
    author = gets.chomp
    puts "Quel est le contenu de ton gossip ?"
    content = gets.chomp
    return params = [content, author] #pour les interactions avec les utilisateurs, dans le web on utilise une variable qui s'appelle params et qui est sous le format hash
  end

end
