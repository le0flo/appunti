+++
weight = 5
+++

### Rapporto incrementale

Data una funzione $f(x)$, un intervallo $h$, allora il rapporto incrementale è il rapporto tra $f(x + h) - f(x)$ e $h$.

$$
\Delta f = \frac{f(x + h) - f(x)}{h}
$$

### Derivata

La funzione $f(x)$ è derivabile, se esiste un limite finito al rapporto incrementale di essa.

$$
\exists \space finito \lim_{\Delta x \to 0} \frac{f(x + h) - f(x)}{h}
$$

### Notazioni

- $Df$
- $\frac{df}{dx}$
- $f'$
- $f^{(1)}$
- $\dot{f}$

Se $f(x)$ è derivabile $\implies f(x)$ è continua.

### Derivate di grado superiore

Data una funzione $f(x) \to Df(x)$:

$$
Df(x) \to D(Df(x)) = D^2f(x)
$$

### Notazioni per derivate di grado superiore

- $\frac{d^2f}{dx^2} = \frac{d}{dx} * \frac{df}{dx}$
- $f''$
- $f^{(2)}$
- $\dot{f}$

$$
D^nf = \frac{d^nf}{dx^n} = f^{(n)}
$$

$D^2f \geq 0 \implies Df$ è crescente, la funzione è convessa.
$D^2f \leq 0 \implies Df$ è decrescente, la funzione è concava.

### Derivate comuni

- $Dc = 0$
- $Dcx = c$
- $D(ax^2 + bx + c) = 2ax + b$
- $Dx^n = nx^{n - 1}$
- $D\sin(x) = \cos(x)$
- $D\cos(x) = -\sin(x)$
- $D\tan(x) = \frac{1}{\cos^2(x)} = 1 + \tan^2(x)$
- $De^x = e^x$
- $D\ln(x) = \frac{1}{x}$
- $D\arcsin(x) = \frac{1}{\sqrt{1 - x^2}}$
- $D\arccos(x) = -\frac{1}{\sqrt{1 - x^2}}$
- $D\arctan(x) = \frac{1}{1 + x^2}$
- $D\sinh(x) = \frac{e^x + e^{-x}}{2} = \cosh(x)$
- $D\cosh(x) = \frac{e^x - e^{-x}}{2} = \sinh(x)$
- $D\tanh(x) = \frac{\cosh^2(x) - \sinh^2(x)}{\cosh^2(x)} = 1 - \tanh^2(x)$

### Regole di calcolo

- $f(x), g(x) \rightarrow D(f + g) = Df + Dg$
- $f(x), c \rightarrow D(cf) = c * Df$
- $f(x) = \sum_{n}^{k = 0} a_k x^k \rightarrow D(f) = \sum_{n}^{k = 1} a_k k x^{k - 1}$
- $f(x), g(x) \rightarrow D(f * g) = (Df)g + f(Dg)$
- $f(x), g(x) \rightarrow D(\frac{f}{g}) = \frac{(Df)g - f(Dg)}{g^2}$
- $f(x), g(x) \rightarrow D(f o g) = (Df(g)) * Dg$
- $f(x) \rightarrow Df^{-1} = \frac{1}{Df(f^{-1}(x))}$
