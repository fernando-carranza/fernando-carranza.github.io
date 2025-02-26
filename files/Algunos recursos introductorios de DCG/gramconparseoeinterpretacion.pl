s(s(N, V), Pred) --> n1(N, Actor), sv(V, Actor, Pred).
n1(n(juan), juan) --> [juan].
n1(n(pedro), pedro) --> [pedro].
n1(n(fede), fede) --> [fede].
n1(n(carlos), carlos) --> [carlos].
n1(n(romi), romi) --> [romi].
n1(n(mati), ,mati) --> [mati].
n1(n(julia), julia) --> [julia].
n1(n(vicky), vicky) --> [vicky].
n1(n(cata), cata) --> [cata].
n1(n(pablo), pablo) --> [pablo].
n2(n(hamburgesas), hamburguesas) --> [hamburguesas].
n2(n(tortas), tortas) --> [tortas].
n2(n(empanadas), empanadas) --> [empanadas].
n2(n(locro), locro) --> [locro].
n2(n(mondongo), mondongo) --> [mondongo].
sv(V, Actor, Pred) --> vintr(V, Actor, Pred).
sv(V, Actor, Pred) --> vtr(V, Actor, Tema, Pred), n2(N, Tema).
vintr(v(nada), Actor, nadar(Actor)) --> [nada].
vintr(v(fuma), Actor, fumar(Actor)) --> [fuma].
vintr(v(camina), Actor, caminar(Actor)) --> [camina].
vintr(v(camina), Actor, caminar(Actor)) --> [camina].
vintr(v(camina), Actor, caminar(Actor)) --> [camina].
vtr(v(vende), Actor, Tema, vender(Actor, Tema)) --> [vende].
vtr(v(cocina), Actor, Tema, cocinar(Actor, Tema)) --> [cocina].
vtr(v(come), Actor, Tema, comer(Actor, Tema)) --> [come].


