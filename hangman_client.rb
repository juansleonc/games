require 'http'
require 'oj'

class HangmanClient
  API_BASE_URL = 'http://localhost:9292'

  def initialize(player_id)
    @player_id = player_id
  end

  def game_state
    response = HTTP.get("#{API_BASE_URL}/hangman/#{@player_id}")
    handle_response(response)
  end

  def try_letter(letter)
    response = HTTP.get("#{API_BASE_URL}/hangman/#{@player_id}/try/#{letter}")
    handle_response(response)
  end

  def display_game_state(state)
    if state[:state] == 'overlimit'
      puts "Has excedido el límite de intentos permitidos."
    else
      puts "Palabra: #{state[:word] || 'N/A'}"
      attempts = state[:attempts] || []
      puts "Intentos: #{attempts.join(', ')}"
      puts "Fallos: #{state[:failures] || 0}"
      puts "Oportunidades restantes: #{state[:chances] || 0}"
      puts "Pista: #{state[:hint] || 'No disponible'}" if state[:failures] >= 3
      puts "Ganado: #{state[:win] ? 'Sí' : 'No'}"
    end
  end

  def game_over?(state)
    state[:win] || state[:chances] == 0 || state[:state] == 'overlimit'
  end

  def play
    state = game_state
    until game_over?(state)
      display_game_state(state)
      print "Ingrese una letra: "
      letter = gets.chomp

      attemp = try_letter(letter)
      state = game_state
      break if attemp[:state] != 'playing'

  end
    display_game_state(state)
    puts attemp[:state] == 'win' ? "¡Ganaste!" : "¡Perdiste!"
  end

  private

  def handle_response(response)
    if response.status.success?
      Oj.load(response.body.to_s)
    else
      puts "Error: #{response.status}"
      exit
    end
  end
end

print "Ingrese su ID de jugador: "
player_id = gets.chomp
client = HangmanClient.new(player_id)
client.play
