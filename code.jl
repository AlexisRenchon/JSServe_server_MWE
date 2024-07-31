using Bonito, WGLMakie #, MakieCore, Deno_jll

function mkfig()
  fig = Figure()
  ax = Axis(fig[1,1])
  plot!(ax, rand(2), rand(2))
  fig
  return fig
end

# Sampo_IP = "131.215.103.129"

calhpc_IP = "131.215.148.255" 

Server(App(DOM.div(mkfig())), calhpc_IP, 9384)


# my_app = App() do session::Session
#  fig = mkfig()
#  return DOM.div(fig)
# end
# Sampo_IP = "131.215.103.129"
# JSServe.Server(my_app, Sampo_IP, 9384)
# server = JSServe.get_server()
# route!(server, "/JSServe" => my_app)

# JSServe.Server(App(DOM.div("hello world")), "131.215.103.129", 9384)


