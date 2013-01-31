require ::File.expand_path('../config/environment',  __FILE__)

handler = Rack::Handler.get('webrick')
handler.run(self, :Port => 9292)