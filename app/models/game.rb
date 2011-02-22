# TODO figure out why this doesn't work.
# require 'dgdosentestgem'

    
class Game < ActiveRecord::Base
    
  def initialize(output)
    @output = output
    # require 'dgdosentestgem' :path => "gems/"
    # @output.puts Dgdosentestgem.hello
    
  end

  def start(secret)
    @secret = secret
    @output.puts 'Welcome to Codebreaker!'
    @output.puts 'Enter guess:'
    
  end

  def guess(guess)
    marker = Marker.new(@secret, guess)
    @output.puts '+'*marker.exact_match_count + '-'*marker.number_match_count
  end
  
end
