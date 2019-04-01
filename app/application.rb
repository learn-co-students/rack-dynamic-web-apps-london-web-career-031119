class Application

  # def call(env)
  #   resp = Rack::Response.new
  #   resp.write "Bye Bye, good world"
  #   resp.finish
  # end

 
    def call(env)
      resp = Rack::Response.new
   
      num_1 = Kernel.rand(1..20)
      num_2 = Kernel.rand(1..20)
      num_3 = Kernel.rand(1..20)
   
      if num_1==num_2 && num_2==num_3
        resp.write "You Win"
      else
        resp.write "You Lose"
      end
   
      resp.finish
    end

# Notice I changed the puts statemetns into resp.wrtie statments . Web servers are just big ruby apps that respos to the User in an HTTP response rather
# than via puts . 

end
