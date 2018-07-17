class Board

def initialize (taille_grille= 5)
	@taille = taille_grille
	@lettre= ('a'..'z').to_a

	@ligne=('a'.. @lettre[@taille-1]).to_a
	@colonne =(1..@taille).to_a.map(&:to_s)
 
 # creation du tableau

	cellules =[]
	@colonne.each do |colonne|
	@ligne.each do |ligne|
	 cellules.push([colonne.to_s, ligne].join(""))
end
end
 
	 #creation d'un hash pour mettre les element du tableau
	hash1=cellules.map { |cell| [cell,nil] }
	@board = Hash[hash1]

end 


def position_vide? position
	!@board[position].nil?
end



def move! (player, position)
	if position_vide? position
	@board[position] = player

	position
	else 

		nil
end
end

def tentative1 #v_wins
	v=[]
	@colonne.each do |colonne|
	@ligne.each do |ligne|
		v.push([ligne, colonne].join(""))
end 
end
v.each_slice(@size).to_a
end 

def tentative2
		h=[]
	@colonne.each do |colonne|
	@ligne.each do |ligne|
		h.push([ligne, colonne].join(""))
end 
end
h.each_slice(@taille).to_a
	
end



#la methode pour initisaliser le gagnant
def tentative3
	diag1, diag2 = [], []
	0.upto(@taille-1).each do |i|
		diag1.push(@ligne[i]+ @colonne[i])
	diag2.push(@ligne[@taille-1-i] + @colonne [i])
end 
[diag1, diag2]
end 


hash2 ={ "a1"=>'x', "b1"=>nil, "1c"=>nil,
	      "a2"=>nil, "b2"=>"x", "2c"=>nil,
	      "a3"=>'y', "b3"=>nil, "3c"=>'x'


}

def le_gagnant? player # si joueur est un caratère, X 
 gagner.each do |gagnant|
 occupant=gagnant.map {|position| @board[position]}

le_match=occupant.map { |x| x.eaqual? player }
if le_match.all?
	return true
	end 
end

false
end


def go_gagnant? player 
	tentative3.map { |gagnant|
gagnant.map {|p| @board[p].equal? player}.all?
}.any?

end


def a_gagner? player
gagnant = tentative1 + tentative2 + tentative3
gagnant.map { |gagnant|
gagnant.map { |p| @board[p].equal? player }.all?
}.any?

end
end


b = Board.new
puts b.tentative3
