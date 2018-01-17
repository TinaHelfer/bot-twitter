require 'Twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "yI136QFevxLzjMxwGIXrzmwnM"
  config.consumer_secret     = "EhUJL8nQ33CHJ7RcxFJDmeZe7Si6aAkS7gv9j8o8vSqDdERyMR"
  config.access_token        = "953578324189736960-dGr3w7de8QYhay60ssQCP0i5rSPQ3RI"
  config.access_token_secret = "pNwQ1IQhwMvhOEVa7nC6hkdB22Es1mf4lg4xXDTg1M7oc"
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
