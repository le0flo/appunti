= Equazioni differenziali

== A variabili separabili

Data una equazione:

$ cases(dot(x) = f(x)g(t), x(t_0) = x_0) $

Possiamo ricavare la funzione $x(t)$ con la seguente formula:

$ integral^x_(x_0) 1 / f(s) d s = integral^t_(t_0) g(s) d s $

== Equazione lineare

Data una equazione:

$ cases(dot(x) = a(t)x + b(t), x(t_0) = x_0) $

Se $b equiv 0$ allora possiamo risolverla con la formula:

$ x(t) = e^(integral^t_(t_0) a(s) d s) x_0 $

Altrimenti la formula completa è:

$ x(t) = e^(integral^t_(t_0) a(s) d s) (x_0 + integral^t_(t_0) e^(-integral^y_(t_0) a(s) d s) b(y) d y) $

== Equazione di II ordine a coefficienti costanti

Data una equazione:

$ cases(dot.double(x) + a dot(x) + b x = 0, x(t_0) = x_0, dot(x)(t_0) = v_0) $

Bisogna trovare il rispettivo polinomio caratteristico:

$ p(lambda) = lambda^2 + a lambda + b $

Trovare $lambda_1, lambda_2$ e:

- se $lambda_1 != lambda_2 in RR arrow x(t) = C_1 e^(lambda_1 t) + C_2 e^(lambda_2 t)$
- se $lambda_1 = lambda_2 in RR arrow x(t) = e^(lambda_1 t) (C_1 + C_2 t)$
- se $lambda_(1,2) = lambda plus.minus i mu, mu > 0 arrow x(t) = e^(lambda t) (C_1 cos(mu t) + C_2 sin(mu t))$
