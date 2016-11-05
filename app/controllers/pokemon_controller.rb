class PokemonController < ApplicationController
	def caputure
		@pokemon = Pokemon.findd(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		pokemon_trainer = @pokemon.trainer
		@pokemon.save
		
		if@pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(pokemon_trainer)
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.level = 1
		@pokemon.health = 100
		
	end

	
end
