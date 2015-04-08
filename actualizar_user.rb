# Actualizar el estado a "active" del usuario que creaste en el reto HTTP anteriorctualizar el estado a "active" del usuario que creaste en el reto HTTP anterior.
	
# Recuerda que ahora el usuario se ubica por username, no por identity, y que cambiaras el estado del usuario usando el verbo PUT

# NOTA: el api no dejara que cambien el estado del usuario hasta que al menos 8 culminen el reto anterior..

require 'httparty'

class Reto
  include HTTParty
  base_uri 'http://hackapi.jgab.net/api/users/'


  def editar(username, user)
    options = {body: user}
    self.class.put('/'+username, options)
  end

end

def main
  jamm = Reto.new
  print jamm.editar("@codejamm", {"status": "active"});
end

main
