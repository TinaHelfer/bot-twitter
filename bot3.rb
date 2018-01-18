require 'Twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = " "
  config.consumer_secret     = " "
  config.access_token        = " "
  config.access_token_secret = " "
end

# client.user do |object|
#   case object
#   when Twitter: Tweet
#     puts "It's a tweet!"
#   when Twitter: DirectMessage
#     puts "Je suis élève à The Hacking Projet une formation gratuite au code et je viens de faire un bot Twitter trop cool!"
#   when Twitter:Streaming: StallWarning
#     warn "Falling behind!"
#   end


list_of_journalist = ["@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey"]
list_of_journalist.each {|journalist|
 puts "Envoi du tweet #{journalist}"
 client.update("#{journalist} Je suis élève à The Hacking Projet une formation gratuite au code et je viens de faire un bot Twitter trop cool !")
 sleep 5
}
