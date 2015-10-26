class Cats < Linkbot::Plugin

  def initialize
    register :regex => /^!cats$/i
    help "!cats - show a random cat gif"
  end

  def on_message(message, matches)
    catstreamer = "http://catstreamer.herokuapp.com/cats.json"
    doc = ActiveSupport::JSON.decode(open(catstreamer).read)
    url = doc["catpic"]
    url
  end

end
