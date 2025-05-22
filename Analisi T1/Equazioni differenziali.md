+++
weight = 8
+++

### A variabili separabili

Data una equazione:

$$
\begin{cases}
\dot{x} = f(x)g(t)\\
x(t_0) = x_0
\end{cases}
$$

Possiamo ricavare la funzione $x(t)$ con la seguente formula:

$$
\int^{x}_{x_0}\frac{1}{f(s)}ds = \int^{t}_{t_0}g(s)ds
$$

### Equazione lineare

Data una equazione:

$$
\begin{cases}
\dot{x} = a(t)x + b(t)\\
x(t_0) = x_0
\end{cases}
$$

Se $b \equiv 0$ allora possiamo risolverla con la formula:

$$
x(t) = e^{\int^{t}_{t_0}a(s)ds}x_0
$$

Altrimenti la formula completa è:

$$
x(t) = e^{\int^{t}_{t_0}a(s)ds}(x_0 + \int^{t}_{t_0}e^{-\int^{y}_{t_0}a(s)ds}b(y)dy)
$$

### Equazione di II ordine a coefficienti costanti

Data una equazione:

$$
\begin{cases}
\ddot{x} + a\dot{x} + bx = 0\\
x(t_0) = x_0\\
\dot{x}(t_0) = v_0
\end{cases}
$$

Bisogna trovare il rispettivo polinomio caratteristico:

$$
p(\lambda) = \lambda^2 + a\lambda + b
$$

Trovare $\lambda_1, \lambda_2$ e:

- se $\lambda_1 \neq \lambda_2 \in \mathbb{R} \to x(t) = C_1e^{\lambda_1t} + C_2e^{\lambda_2t}$

- se $\lambda_1 = \lambda_2 \in \mathbb{R} \to x(t) = e^{\lambda_1t}(C_1 + C_2t)$

- se $\lambda_{1,2} = \lambda \pm i\mu, \mu > 0 \to x(t) = e^{\lambda t}(C_1\cos(\mu t) + C_2\sin(\mu t))$
