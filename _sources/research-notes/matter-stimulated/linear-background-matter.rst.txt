Linear Background Matter Profile
============================================

The equation of motion in flavor basis for arbitary matter profile :math:`\lambda(x)` is

.. math::
   i \partial_x \begin{pmatrix}
   \psi_e\\
   \psi_x
   \end{pmatrix} = \left[
   \left( \frac{\lambda(x)}{2} - \frac{\omega_v}{2} \cos 2\theta_v  \right) \sigma_3 + \frac{\omega_v}{2} \sin 2\theta_v \sigma_1
   \right]\begin{pmatrix}
   \psi_e\\
   \psi_x
   \end{pmatrix}.

Introduce the T transformation

.. math::
   \begin{pmatrix}
   \psi_e\\
   \psi_x
   \end{pmatrix} = \mathbf{T} \begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix} = \begin{pmatrix}
   e^{-i \eta(x)} & 0 \\
   0 & e^{i \eta(x)}
   \end{pmatrix} \begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix}.

By multiplying on both sides :math:`\mathbf{T}^\dagger`, we get

.. math::
   i \partial_x \begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix} = \frac{\omega_v}{2} \sin 2\theta_v \begin{pmatrix}
   0 & e^{2i\eta(x)} \\
   e^{-2i\eta(x)} & 0
   \end{pmatrix}\begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix} + \left( \frac{\lambda(x)}{2} - \frac{\omega_v}{2} \cos 2\theta_v - \partial_x \eta(x) \right) \sigma_3 \begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix}.

To remove the diagonal elements we require

.. math::
   \frac{\lambda(x)}{2} - \frac{\omega_v}{2} \cos 2\theta_v - \partial_x \eta(x)  = 0,

.. math::
   \eta(x) = \eta(0) + \frac{1}{2}\int_0^x dx' \left( \lambda(x) - \frac{\omega_v}{2} \cos 2\theta_v \right) .


Perodic perturbation can be used

.. math::
   \delta \lambda(x) = A\sin (kx + \phi).

:math:`\eta(x)` has the form

.. math::
   \eta(x) &= \eta(0) + \frac{1}{2} \int_0^x dx' (\lambda_0(x) + A\sin(kx+\phi) ) - \frac{1}{2}\omega_v \cos 2\theta_v x \\
   & = - \frac{1}{2} \omega_v \cos 2\theta_v x - \frac{A}{2k} \cos(kx+\phi) + \frac{1}{2} g(x) {\color{grey}- \frac{1}{2}g(0) - \frac{A}{2k} \cos \phi + \eta(0) },

where :math:`g(x)=\int dx' \lambda_0(x')` and the grey part is usally set to zero.

The equation we are dealing with is

.. math::
   i \partial_x  \begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix} = \frac{\omega_v}{2} \sin 2\theta_v \begin{pmatrix}
   0 & e^{2i\eta(x)} \\
   e^{-2i\eta(x)} & 0
   \end{pmatrix}\begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix},

where

.. math::
   \eta(x) = - \frac{1}{2} \omega_v \cos 2\theta_v x - \frac{A}{2k} \cos(kx+\phi) + \frac{1}{2} g(x) .


.. admonition:: Can we solve the equation
   :class: note

   Here is the problem. For most general :math:`g(x)` we are not guaranteed to have a analycal solution of the system.

   For :math:`g(x)\propto x` we have demonstrated that the system is solvale.

   What about :math:`g(x)\propto x^2` (linear background matter profile) and :math:`g(x)\propto e^{x}` (exponential background matter profile)?


Linear Background Matter Profile
------------------------------------------------------

.. admonition:: Equation Solved
   :class: note

   It turns out that we can solve the system

   .. math::
      i\partial_x \begin{pmatrix}
      \psi_{b1}\\
      \psi_{b2}
      \end{pmatrix} = A_s  \begin{pmatrix}
      0 & e^{if x^2} \\
      e^{-if x^2} & 0
      \end{pmatrix}\begin{pmatrix}
      \psi_{b1}\\
      \psi_{b2}
      \end{pmatrix}.

   The solution involves hypergeometric functions. For initial condition

   .. math::
      \begin{pmatrix}
      \psi_{b1}(0)\\
      \psi_{b2}(0)
      \end{pmatrix} = \begin{pmatrix}
      1\\
      0
      \end{pmatrix},

   we have the solution

   .. math::
      \begin{pmatrix}
      \psi_{b1}(x)\\
      \psi_{b2}(x)
      \end{pmatrix} = \begin{pmatrix}
      {}_1F_1 \left( \frac{i A_s^2}{4f};\frac{1}{2}; i f x^2 \right) \\
      -i A_s x e^{-i f x^2} {}_1F_1 \left( \frac{i A_s^2}{4f}+1;\frac{3}{2}; i f x^2 \right)
      \end{pmatrix},

   where :math:`{}_1F_1(a;b;z)` is `hypergeometric function <https://en.wikipedia.org/wiki/Confluent_hypergeometric_function>`_ .


We choose the background matter profile to be

.. math::
   \lambda_0(x) = a x + b,

while the perturbation to be

.. math::
   \delta \lambda(x) = A\sin (kx + \phi).

:math:`\eta(x)` is solved

.. math::
   g(x) & = \frac{1}{2} ax^2+b \\
   \eta(x) &= - \frac{1}{2} \omega_v \cos 2\theta_v x - \frac{A}{2k} \cos (kx + \phi) + \frac{1}{2} \left( \frac{1}{2}a x^2 + b x \right),

so that

.. math::
   e^{2i\eta(x)} = e^{-i \omega_v \cos 2\theta_v x} e^{i ( ax^2/2+ bx )} e^{-i\left( \frac{A}{k} \cos (kx+\phi) \right)}.


.. admonition:: Jacobi-Anger Expansion
   :class: note

   .. math::
      e^{-i\left( \frac{A}{k} \cos (kx+\phi) \right)} = \sum_{n=-\infty}^{\infty} (-i)^n J_n\left(\frac{A}{k}\right) e^{in(kx+\phi)}.


Collect terms

.. math::
   e^{2i\eta(x)} &= \sum_{n=-\infty}^{\infty} (-i)^n J_n\left(\frac{A}{k}\right) e^{in(kx+\phi) + \frac{1}{2}ax^2 +bx - \omega_v \cos 2\theta_v x } \\
   &=  \sum_{n=-\infty}^{\infty} (-i)^n J_n\left(\frac{A}{k}\right) e^{ i \left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi \right) } \\
   & = \sum_{n=-\infty}^{\infty} J_n\left(\frac{A}{k}\right) e^{ i \left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi + n\pi \right) } \\
   & = \sum_{n=-\infty}^{\infty} J_n\left(\frac{A}{k}\right) e^{ i \left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi' \right) }  ,

where

.. math::
   b_n &= b + nk - \omega_v \cos 2\theta_v,\\
   \phi'&= \phi + \pi,

and we have used

.. math::
   (-i)^n = e^{i n\pi}.


The equation to be sovled becomes

.. math::
   i\partial_x \begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix} =   \sum_{n=-\infty}^\infty \frac{\omega_v}{2}\sin 2\theta_v  J_n\left( \frac{A}{k} \right) \begin{pmatrix}
   0 & e^{i\left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi' \right) } \\
   e^{-i\left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi' \right)} & 0
   \end{pmatrix}\begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix}.


With initial condition

.. math::
   \begin{pmatrix}
   \psi_{b1}(0)\\
   \psi_{b2}(0)
   \end{pmatrix} = \begin{pmatrix}
   1\\
   0
   \end{pmatrix},


the equation


.. math::
   i\partial_x \begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix} =   \frac{\omega_v}{2}\sin 2\theta_v  J_n\left( \frac{A}{k} \right) \begin{pmatrix}
   0 & e^{i\left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi' \right) } \\
   e^{-i\left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi' \right)} & 0
   \end{pmatrix}\begin{pmatrix}
   \psi_{b1}\\
   \psi_{b2}
   \end{pmatrix}.

can be solved. To save keystroke, we define

.. math::
   A_s= J_n\left(\frac{A}{k}\right)\frac{\omega_v}{2} \sin 2\theta_v.

We write down the solution

.. math::
   \psi_2(x) =  (-1)^{1/4} \sqrt{2} A_s e^{-i \left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi'  \right) } b_n  \left[ - H_{-1 - i A_s^2/a} (p_1 + p_2 x) F_1 \left( 1 + i \frac{A_s^2}{2a};\frac{3}{2};\frac{i b_n^2}{2a} \right) + (1+\frac{a}{b_n} x) H_{-1 - i A_s^2/a} (p_1)  F_1 \left( 1 + i \frac{A_s^2}{2a};\frac{3}{2}; (p_1 + p_2 x)^2\right) \right] \bigg /  \left\{ \sqrt{a} H_{-i A_s^2/a} (p_1) \left[ (-1)^{3/4} \sqrt{2a} F_1 \left(  i \frac{A_s^2}{2a};\frac{1}{2};\frac{i b_n^2}{2a} \right) - b_n F_1 \left(  1 + i \frac{A_s^2}{2a};\frac{3}{2};\frac{i b_n^2}{2a} \right) \right] \right\},

where

.. math::
   p_1 & = \frac{(-1)^{1/4} b_n}{\sqrt{2a}}, \\
   p_2 & = \frac{ (-1)^{1/4} \sqrt{a}  }{ \sqrt{2} }.

:math:`F_1\equiv {}_1 F_1` is the hypergeometric function. What's important is that we can always define

.. math::
   M_n & =  \sqrt{a} H_{-i A_s^2/a} (p_1) \left[ (-1)^{3/4} \sqrt{2a} F_1 \left(  i \frac{A_s^2}{2a};\frac{1}{2};\frac{i b_n^2}{2a} \right) - b_n F_1 \left(  1 + i \frac{A_s^2}{2a};\frac{3}{2};\frac{i b_n^2}{2a} \right) \right] \\
   K_{F,n} &= F_1 \left( 1 + i \frac{A_s^2}{2a};\frac{3}{2};\frac{i b_n^2}{2a} \right) \\
   K_{H,n} &= H_{-1 - i A_s^2/a} (p_1),

which are all constants given the parameters and n. We can reduce the solution to

.. math::
   \psi_2 =  (-1)^{1/4} \sqrt{2} A_s b_n \frac{K_{H,n} F_1 \left( 1 + i \frac{A_s^2}{2a};\frac{3}{2}; (p_1 + p_2 x)^2\right) (1+\frac{a}{b_n} x) - K_{F,n} H_{-1 - i A_s^2/a} (p_1 + p_2 x) }{ M_n } e^{-i \left( \frac{1}{2} a \left( x + \frac{b_n}{a} \right)^2 - \frac{b_n^2}{2a} + n\phi'  \right) }.

Some points:

1. The third argument of :math:`F_1`, which is denoted as :math:`p_1 +p_2 x` is in fact imaginary. As a result, this value of hypergeometric function is actually dropping as :math:`x` increase.
2. In this result, the x dependent Hermite polynomial is a monotonically decreasing function.
3. The overall phase doesn't play a role in the transition probability.
