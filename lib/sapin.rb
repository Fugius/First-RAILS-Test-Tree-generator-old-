class Sapin
	attr_accessor :hauteur, :tailleLignes, :Lignes

	def initialize (hauteur)
		#Variables principales

		@hauteur = hauteur
		@tailleLignes = Array.new(@hauteur - 1)
		@Lignes = Array.new(@hauteur)

		#Variables utilitaires

		ligne = ""
		j = 1
		tailleTronc = 0

		#Suite => tab pour la taille de chaque ligne

		(@hauteur - 1).times do |i|
			@tailleLignes[i] = 1 + 2*i
		end
		
		#Taille globale d'une ligne

		ligne = '<font color="white">o</font>' * @tailleLignes[@hauteur - 2]

		#Ecriture de chaque Ligne

		(@hauteur - (@hauteur*0.1).round).times do |i|

			if rand(2) == 1 && i > 3
				j = rand(tailleLignes[i]) + 1
				ligne = (('<font color="white">o</font>' * ((@tailleLignes[@hauteur-2] - @tailleLignes[i])/2)) + ('<font color="green">*</font>' * (@tailleLignes[i] - j) ) + '<font color="red">@</font>' + ('<font color="green">*</font>' * (j-1) ) +  ('<font color="white">o</font>' * ((@tailleLignes[@hauteur-2] - @tailleLignes[i])/2)))
			else
				ligne = (('<font color="white">o</font>' * ((@tailleLignes[@hauteur-2] - @tailleLignes[i])/2)) + ('<font color="green">*</font>' * (@tailleLignes[i] )+ ('<font color="white">o</font>' * ((@tailleLignes[@hauteur-2] - @tailleLignes[i])/2))))
			end
			
			@Lignes[i] = ligne
		end

		#taille tronc

		if (tailleLignes[@hauteur - (@hauteur*0.1).round - 2]*0.1).round%2 == 1
			tailleTronc = (tailleLignes[@hauteur - (@hauteur*0.1).round - 2]*0.1).round
		else
			tailleTronc = (tailleLignes[@hauteur - (@hauteur*0.1).round - 2]*0.1).round + 1
		end

		#Tronc

		((@hauteur*0.1).round).times do |i|
			@Lignes[@hauteur - 2 - i] = '<font color="white">o</font>' * ((tailleLignes[@hauteur-2]/2) - tailleTronc/2).round + '<font color="673820">#</font>' * tailleTronc + '<font color="white">o</font>' * ((tailleLignes[@hauteur-2]/2) - tailleTronc/2).round
		end

		#Affihage

		
	end

	def show
		puts @Lignes
	end

end

sapin = Sapin.new(5)
sapin.show

