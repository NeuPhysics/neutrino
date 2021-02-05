Single Frequency Matter Perturbation
------------------------------------------------------------------


As a first step, we solve single frequency matter perturbation

.. math::
   \delta \lambda(x)  = A \sin (k x + \phi).


Using the relation between :math:`\eta` and :math:`\delta\lambda`, we solve out :math:`\eta`.

.. math::
   \eta(x) = - \frac{\omega_m}{2}x - \frac{\cos 2\theta_m}{2} \frac{A}{k} \cos (k x + \phi),

where we have chosen :math:`\eta(0)=-\frac{\cos 2\theta_m}{2}\frac{A}{k}\cos\phi`.

The problem is to solve the equation of motion

.. math::
   i \frac{d}{dx} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} = \frac{\sin 2\theta_m}{2}\delta\lambda(x) \begin{pmatrix} 0 &  e^{2i\eta(x)} \\   e^{-2i\eta(x)} &  0 \end{pmatrix}  \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} .

We also define

.. math::
   h &= \frac{\sin 2\theta_m}{2}\delta\lambda(x)  e^{2i\eta(x)} \\
   & = \frac{\sin 2\theta_m}{2} A \sin (kx+\phi) e^{i\left( -\omega_m x - \frac{A \cos 2\theta_m}{k} \cos (kx+\phi) \right)},
   :label: single-frequency-hamiltonian-element

so that the equation of motion becomes

.. math::
   i \frac{d}{dx} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} =  \begin{pmatrix} 0 &  h \\   h^* &  0 \end{pmatrix}  \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} .

Obviously, the exponential terms is too complicate. On the other hand, this equation of motion reminds us of the Rabi oscillation. So we decide to rewrite the exponential into some plane wave terms using Jacobi-Anger expansion. (Refs & Notes: Patton et al)

.. admonition:: Jacobi-Anger Expansion
   :class: note

   One of the forms of Jacobi-Anger expansion is

   .. math::
      e^{i z \cos (\Phi)} = \sum_{n=-\infty}^\infty i^n J_n(z) e^{i n\Phi}.
      :label: jacobi-anger-expansion


We define :math:`z_k = \frac{A}{k} \cos 2\theta_m`, with which we expand the term

.. math::
   e^{-i\frac{\cos 2\theta_m A}{k} \cos (kx +\phi)} = \sum_{n=-\infty}^\infty i^n J_n (-z_k) e^{in (kx +\phi)} =  \sum_{n=-\infty}^\infty (-i)^n J_n (z_k) e^{in (kx +\phi)},

where I used :math:`J_n(-z_k) = (-1)^n J_n(z_k)` for integer :math:`n`.

The expansion is plugged into the Hamiltonian elements,

.. math::
   h &= \frac{A \sin 2\theta_m \sin (kx + \phi)}{2} e^{-i\omega_m x } \sum_{n = - \infty}^\infty (-i)^n J_n(z_k) e^{i n ( kx + \phi)} \\
   & = \frac{A\sin 2\theta_m}{4i} \left( e^{i(kx + \phi)} - e^{-i(kx+\phi)} \right) e^{-i\omega_m x } \sum_{n = - \infty}^\infty (-i)^n J_n(z_k) e^{i n ( kx + \phi)} \\
   & = \frac{A\sin 2\theta_m}{4i} \left( \sum_{n=-\infty}^\infty e^{i(n+1)} i^n J_n (z_k) e^{i((n+1) k - \omega_m)x}  - \sum_{n'=-\infty}^\infty e^{i(n'-1)} (-i)^{n'}J_{n'}(z_k) e^{i( (n'-1)k - \omega_m)x}  \right)\\
   & = \frac{A\sin 2\theta_m}{4} \sum_{n=-\infty}^{\infty} e^{in\phi} \left( - (-i)^n \right) \frac{2n}{z_k} J_n (z_k) e^{i(nk-\omega_m)x},

where I have used

.. math::
   J_{n-1}(z_k) + J_{n+1}(z_k) = \frac{2n}{z_k} J_n(z_k).


Here comes the approximation. The most important oscillation we need is the one with largest period, which indicates the phase to be almost zero,

.. math::
   (n+1) k -\omega_m &\sim 0 \\
   (n'-1) k -\omega_m &\sim 0.
   :label: single-frequency-rwa-requirement


The two such conditions for the two summations are

.. math::
   n \equiv n_- &= \mathrm{Int}\left( \frac{\omega_m}{k} \right) - 1 \\
   n' \equiv n_+ &= \mathrm{Int}\left( \frac{\omega_m}{k} \right) + 1 .

We define :math:`\mathrm{Int}\left( \frac{\omega_m}{k} \right) = n_0`,

.. math::
   n_- &= n_0 - 1 \\
   n_+ &= n_0 + 1 .


The element of Hamiltonian is written as

.. math::
   h = - \frac{A\sin 2\theta_m}{2} e^{in_0\phi} (-i)^{n_0} \frac{n_0}{z_k} J_{n_0 }(z_k) e^{i(n_0 k -\omega_m)x}.


To save keystrokes, we define

.. math::
   F = - A\sin 2\theta_m e^{i n_0 \phi} (-i)^{n_0} \frac{n_0}{z_k} J_{n_0} (z_k) ,
   :label: definition-F

which depends on :math:`n_0` and :math:`z_k = \frac{A}{k} \cos 2\theta_m`. Notice that

.. math::
   \lvert F \rvert^2 = \left\lvert  k \tan 2\theta_m  n_0 J_{n_0} (z_k) \right\rvert^2 .

Thus the 12 element of the Hamiltonian is rewritten as

.. math::
   h = \frac{1}{2}F e^{i(n_0 k -\omega_m)x}.
   :label: eqn-12-element-and-F


.. admonition:: Solving Using Mathematica
   :class: hint

   The Mathematica code::

      In[1]:= sys = I D[{phi1[x], phi2[x]}, x] == {{0, (g0R + I g0I) Exp[ I (-omegam + n0 k) x]}, {(g0R - I g0I) Exp[-I (-omegam + n0 k) x], 0}}.{phi1[x], phi2[x]}
      In[2]:= DSolve[sys, {phi1, phi2}, x]// FullSimplify
      Out[3]:= {{phi1 -> Function[{x},
      E^(1/2 I (k n0 + I Sqrt[-4 (g0I^2 + g0R^2) - (k n0 - omegam)^2] - omegam) x) C[1]
      + E^(1/2 (Sqrt[-4 (g0I^2 + g0R^2) - (k n0 - omegam)^2] + I (k n0 - omegam)) x) C[2]],
      phi2 -> Function[{x}, (1/(2 (g0I - I g0R)))
      I E^(-I (k n0 - omegam) x +
       1/2 I (k n0 + I Sqrt[-4 (g0I^2 + g0R^2) - (k n0 - omegam)^2] - omegam) x)
       (k n0 + I Sqrt[-4 (g0I^2 + g0R^2) - (k n0 - omegam)^2] - omegam) C[1]
       + (1/(2 (g0I - I g0R))) E^(1/2 (Sqrt[-4 (g0I^2 + g0R^2) - (k n0 - omegam)^2]
       + I (k n0 - omegam)) x - I (k n0 - omegam) x) (Sqrt[-4 (g0I^2 + g0R^2) - (k n0 - omegam)^2]
       + I (k n0 - omegam)) C[2]]}}



The general solution to the equation of motion is

.. math::
   \psi_{b1} = & C_1 e^{\frac{1}{2} i \left( n_0 k -\omega_m - \sqrt{  \lvert F \rvert^2 +  (n_0 k -\omega_m)^2 } \right)x} + C_2 e^{\frac{1}{2} i \left( n_0 k -\omega_m + \sqrt{  \lvert F \rvert^2 +  (n_0 k -\omega_m)^2 } \right)x} \\
   \psi_{b2} = & \frac{C_1}{F^*} i \left( n_0 k - \omega_m - \sqrt{ \lvert F\rvert^2 + ( n_0 k - \omega_m )^2 } \right) e^{ -\frac{1}{2}i (n_0 k - \omega_m ) x - \frac{1}{2} i \sqrt{ \lvert F \rvert^2 + (n_0 k - \omega_m )^2 }  } \\
   & + \frac{C_2}{F^*} i \left( n_0 k - \omega_m + \sqrt{ \lvert F\rvert^2 + ( n_0 k - \omega_m )^2 }  \right)   e^{ -\frac{1}{2}i (n_0 k - \omega_m ) x + \frac{1}{2} i \sqrt{ \lvert F \rvert^2 + (n_0 k - \omega_m )^2 }  } .

For simplicity, we define

.. math::
   g &= n_0 k  - \omega_m, \\
   q^2 &= \lvert F \rvert^2 + g^2.
   :label: definition-g-q


To determine the constants, we need intial condition,

.. math::
   \begin{pmatrix} \psi_1 (0) \\ \psi_2(0)  \end{pmatrix} = \begin{pmatrix} 1 \\ 0  \end{pmatrix} ,

which leads to

.. math::
   \begin{pmatrix} \psi_{b1} (0) \\ \psi_{b2}(0)  \end{pmatrix} = \begin{pmatrix} e^{i\eta(0)} \\ 0  \end{pmatrix},

using equation :ref:`wavefunction in background matter basis <matter-stimulated-equation-wavefunction-diff-basis>`.

Plug in the initial condition for the wave function,

.. math::
   C_1 + C_2 &= e^{i \frac{z_k}{2}\cos \phi} \\
   \frac{C_1}{2F^ * } i \left( g - q \right) + \frac{C _ 2}{ F ^ *} i \left( q + g  \right) & = 0.


The constants are solved out

.. math::
   C_1 &= e^{i \frac{z_k}{2}\cos \phi} \frac{q + g }{2 q} , \\
   C_2 &= e^{i \frac{z_k}{2}\cos \phi} \frac{ q - g }{2 q}.


where :math:`F` is defined in :eq:`definition-F` and :math:`l` and :math:`g` are defined in :eq:`definition-g-q`.


The second element of wave function becomes

.. math::
   \psi_{b2}(x) = \frac{- F}{ q } e^{i\frac{z_k}{2} \cos\phi} e^{- \frac{i}{2}gx} \sin \left( \frac{1}{2} q x \right).


The transition probability becomes

.. math::
   P_{1\to 2} = \lvert \psi_{b2} \rvert^2 = \frac{\lvert F \rvert^2}{q^2} \sin^2\left( \frac{ q }{2} x \right),

where :math:`q` is the oscillation wavenumber. Period of this oscillation is given by :math:`T = \frac{2\pi}{q}`.



.. admonition:: Compare The Result with Kneller et al
   :class: note

   Kneller et al have a transition probability

   .. math::
      \color{red}P_{12} = \frac{\kappa_n^2}{q_n^2} \sin^2 (q_n x),

   where :math:`\color{red}q_n^2 = k_n^2 + \kappa_n^2` and :math:`\color{red}2k_n = \tilde{\delta k}_{12} + n k_\star`.

   In my notation, :math:`k` is the same as their :math:`\color{red}k_\star`. After the first step of translation, we have :math:`g = \color{red} 2 k_n`.

   The definition of :math:`\color{red}\kappa_n` is given by

   .. math
      \color{red}\kappa_{ij,n} = (-i)^{n-1} \frac{n C_\star V_\star}{z_{ij}} J_n(z_{ij}) \tilde U_{ei}^* \tilde U_{ej} e^{i ( n \eta + z_{ij} \cos \eta)},

   in Kneller's notation and

   .. math::
      \delta V_{ee}(x) = C_\star V_\star \sin (k_\star x + \eta).

   So we conclude that my :math:`\lvert F \rvert ^2` is related to Kneller's :math:`\lvert \kappa_n \rvert^2` through

   .. math::
      \lvert F \rvert^2 = 4 \color{red} \lvert \kappa_n \rvert^2.

   We also have

   .. math::
      q^2 = \lvert F \rvert ^2 + g^2  = 4 \color{red} q_n^2,

   i.e., :math:`{\color{red}q_n} = \frac{ q }{2}`.

   Now we see the method we have used gives exactly the same transition probability as Kneller's.



To make the numerical calculations easier, we rewrite the result by defining the scaled variables

.. math::
   \hat x & = \omega_m x,\\
   \hat k &= \frac{k}{\omega_m}, \\
   \hat A & = \frac{A}{\omega_m}, \\
   \hat g & = \frac{g}{\omega_m} = n_0 \hat k - 1,\\
   \hat q &= \sqrt{ \lvert \hat F \rvert^2 + \hat g^2 } = \sqrt{ \lvert \hat k \tan 2\theta_m n_0 J_{n_0} (z_k) \rvert + \hat g^2 },

so that :math:`n_0 = \mathrm{Round}\left( 1/\hat k\right)`, :math:`z_k=\frac{\hat A}{\hat k} \cos 2 \theta_m` and

.. _single-frequency-equation-stimulated-single-freq-trans-probability:

.. math::
   P_{1\to 2} = \frac{\left\lvert \hat k \tan 2\theta_m n_0 J_{n_0} (z_k) \right\rvert^2}{\left\lvert  \hat k \tan 2\theta_m n_0 J_{n_0} (z_k) \right\rvert^2 + \hat g ^2}\sin^2\left( \frac{ \hat q }{2} \hat x \right) .
   :label: stimulated-single-freq-trans-probability




Mathematical Analysis of The Result
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


There are several question to answer before we can understand the picture of the math.

1. What does each term mean in the Hamiltonian?
2. What exactly is the unitary transformation we used to rotate the wave function?
3. What is the physical meaning of Jacobi-Anger expansion in our calculation?


To answer the first question, we need to write down the solution to Schrodinger equation assuming the Hamiltonian has only one term. The results are listed below.

============================================================ =================================================================================================================================
Hamiltonian                                                       Solution to The First Element of Wave Function
============================================================ =================================================================================================================================
.. math:: -\frac{\omega_m}{2}\sigma_3                           .. math:: \psi_1 \sim e^{i\omega_m x/2}
.. math:: \frac{\delta\lambda}{2}\cos 2\theta_m \sigma_3        .. math:: \psi_1 \sim e^{i\frac{A\cos 2\theta_m}{2k}\cos(kx+\phi)}
.. math:: \frac{\delta\lambda}{2}\cos 2\theta_m \sigma_3        .. math:: \psi_1 = C_1 e^{i\frac{A\sin 2\theta_m}{2k}\cos(kx+\phi)} + C_2 e^{-i\frac{A\sin 2\theta_m}{2k}\cos(kx+\phi)}
============================================================ =================================================================================================================================


The unitary transformation used is to move our reference frame to a co-rotating one. :math:`-\frac{\omega_m}{2}\sigma_3` is indeed causing the wave function to rotate and removing this term using a transformation means we are co-rotating with it. :math:`\frac{\delta\lambda}{2}\cos 2\theta_m \sigma_3` causes a more complicated rotation however it is still a rotation.



As for Jacobi-Anger expansion, it expands an oscillating matter profile to infinite constant matter potentials. To see it more clearly, we assume that :math:`\delta\lambda= \lambda_c` is constant. After the unitary transformation, the effective Hamiltonian is

.. math::
   H' = \frac{\sin 2\theta_m}{2} \lambda_c \begin{pmatrix} 0 & e^{2i\eta(x)} \\ e^{-2i\eta(x)} & 0 \end{pmatrix},

where :math:`\eta(x) = -\frac{\omega_m}{2}x + \frac{\cos 2\theta_m}{2}\lambda_c x` and we have chosen :math:`\eta(0)=0`.

The 12 element of the Hamiltonian becomes

.. math::
   \frac{\sin 2\theta_m}{2} \lambda_c e^{2i\eta(x)} = \frac{\sin 2\theta_m}{2} \lambda_c e^{2i\left( \frac{\omega_m}{2} + \frac{\cos 2\theta_m}{2} \lambda_c \right)x} .

The significance of it is to show that a constant matter profile will result in a simple exponential term. However, as we move on to periodic matter profile, we have a Hamiltonian element of the form

.. math::
   h = \frac{\sin 2\theta_m}{2} A \sin (kx+\phi) e^{2i\left( -\frac{\omega_m}{2} x + \frac{A \cos 2\theta_m}{2k} \cos (kx+\phi) \right)},

as derived in equation :eq:`single-frequency-hamiltonian-element`. To compare with the constant matter case, we make a table of relevant terms in Hamiltonian.

================================================================================   ========================================================================
Constant Matter Profile :math:`\delta\lambda = \lambda_c`                           Period Matter Profile :math:`\delta\lambda=A\sin (kx+\phi)`
================================================================================   ========================================================================
.. math:: \frac{\sin 2\theta_m}{2}\lambda_c e^{i \cos 2\theta_m \lambda_c x}         .. math:: \frac{A\sin 2\theta_m}{4} \sum_{n=-\infty}^{\infty} e^{in\phi} \left( - i^n \right) \frac{2n+1}{z_k} J_n (z_k) e^{i(nk-\omega_m)x}
================================================================================   ========================================================================

The periodic profile comes into the exponential. Jacobi-Anger expansion (equation :eq:`jacobi-anger-expansion`) expands the periodic matter profile into infinite constant matter profiles. By comparing the two cases, we conclude that :math:`\cos 2\theta_m\lambda_c` corresponds to :math:`nk`.

The RWA approximation we used to drop fast oscillatory terms in the summation is to find the most relevant constant matter profile per se.

The big question is which constant matter profiles are the most important ones? Mathematically, we require the phase to be almost zero, i.e. equation :eq:`single-frequency-rwa-requirement` or

.. math::
   n_0 k - \omega_m \sim 0 ,

where :math:`n_0=\mathrm{Round}\left( \frac{\omega_m}{k} \right)`.


**What is the meaning of this condition in this new basis?** If we define a effective matter density out of the Jacobi-Anger expanded series, we should define it to be

.. math::
   \lambda_c' = \frac{n_0 k}{\cos 2\theta_m}.

Then we can rewrite the RWA requirement as

.. math::
   \lambda_c' - \cos 2\theta_m \omega_m = 0.


.. admonition:: A Reminder of MSW Resonance
   :class: note

   The MSW Hamiltonian in flavor basis is

   .. math::
      \mathbf H = \frac{\omega_v}{2}( -\cos2\theta_v \sigma_3 + \sin 2\theta_v \sigma_1 )   {\color{red} + \frac{\lambda}{2} \mathbf {\sigma_3}}  {\color{green}+ \Delta \mathbf I},

   where the MSW resonance happens when all the :math:`\sigma_3` terms cancel eath other, i.e.,

   .. math::
      - \omega_v \cos 2\theta_v  + \lambda = 0.




The Resonances
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Questions
   :class: question

   There are several questions to be answered.

   1. How good is the RWA approximation? What are the conditions?
   2. What can we use for other calculations?
   3. Multiple matter frequency?


Now we check the Hamiltonian again to see if we could locate some physics. In the newly defined basis and using scaled quantities

.. math::
   \hat{\mathbf{H}} = \begin{pmatrix}
   0 & \hat h \\
   \hat h^* & 0
   \end{pmatrix},

where

.. math::
   \hat h = \frac{1}{2} \hat B_n e^{i(n \hat k - 1)\hat x},

and

.. math::
   \hat B_n = (-i)^n \hat k \tan 2\theta_{\mathrm{m}} n J_n (\frac{\hat A}{\hat k} \cos 2\theta_{\mathrm{m}}).


It becomes much more clearer if we plug :math:`\hat h` back into Hamiltonian. What we find is that

.. math::
   \hat{\mathbf{H}} = \sum_{n=-\infty}^{\infty} \begin{pmatrix}
   0 & -\frac{1}{2} \hat B_n e^{i(n \hat k - 1)\hat x} \\
   -\frac{1}{2} \hat B_n^* e^{-i(n \hat k - 1)\hat x} & 0
   \end{pmatrix}.

With some effort, we find that the solution to the second amplitude of the wave function is

.. math::
   \psi_2 = \frac{i}{ \hat B_n \hat W} e^{-i(n \hat k -1)\hat x}  \left\vert \hat B_n \right\vert^2 \sin\left( \frac{1}{2}(n \hat k -1 -\hat W) \hat x  \right),

where

.. math::
   \hat W = \sqrt{ (n \hat k - 1)^2 + \left\vert \hat B_n \right\vert^2 }.

At this stage, it is quite obvious that our system is a composite Rabi oscilation system. For each specific :math:`n` term we write down the hopping probability from light state to the heavy state,

.. math::
   P_{\mathrm{L}\to\mathrm{H}}^{(n)} = \frac{ \left\lvert \hat B_{n}  \right\rvert^2 }{ \left\lvert   \hat B_{n}  \right\rvert^2 + ( n \hat k - 1 )^2  } \sin^2 \left( \frac{ \hat q^{(n)} }{2} \hat x \right),

where

.. math::
   \Gamma^{(n)} &= \left\lvert \hat B_{n} \right\rvert, \quad \text{width of resonance ($n\hat k$ as parameter)} \\
   \hat q^{(n)} &= \sqrt{\left\lvert  \Gamma^{(n)} \right\rvert^2 + ( n \hat k - 1 )^2},\quad \text{frequency of oscillations}





.. admonition:: Scaled Quantities
   :class: note

   As a reminder, the scaled quantities are defined as

   .. math::
      \hat x &= \omega_{\mathrm{m}} x, \\
      \hat h &= h/\omega_{\mathrm{m}}, \\
      \hat B_n &= B_n/\omega_{\mathrm{m}}, \\
      \hat k &= k/\omega_{\mathrm{m}}, \\
      \hat A &= A/\omega_{\mathrm{m}}, \\
      \hat q &= q/\omega_{\mathrm{m}} .

   Just a comment. :math:`B_n` is used here because I actually want to use it for multi-frequency case and I just think :math:`B_n` is better than :math:`F`.



.. admonition:: Rabi Oscillations
   :class: note

   The form of Hamiltonian reminds of us Rabi oscillations, whose Hamiltonian is

   .. math::
      \begin{pmatrix}
      -\omega_0/2 & \alpha \omega_0 e^{i \omega x}\\
      \alpha \omega_0  e^{-i k x} & \omega_0/2
      \end{pmatrix},

   where :math:`\omega_0` is the energy gap between the two energy levels and :math:`\omega` is the frequency of the incoming light. To be more specific, we explain this phenomenon using two level systems.

   .. figure:: assets/single-frequency/rabi-diagram.png
      :align: center

      Rabi oscillation system

   The system is prepared in low energy state. When the incoming light frequency matches the energy gap between two states, we have a resonance. Otherwise, we still have the transition from low energy state to high energy state but with a smaller transition amplitude.

   .. figure:: assets/single-frequency/rabi-oscillations.png
      :align: center

      Rabi oscillations for two differen incoming light frequencies. :math:`\omega/\omega_0 =1` is the resonance condition.

   What we really mean by resonance is that the transition amplitude is maximized. Or the phase inside the off-diagonal element of Hamiltonian is minimized.

   What's more, we explore the transition amplitude as a function of differen incoming light frequencies.

   .. figure:: assets/single-frequency/rabi-resonance.png
      :align: center

      Resonance of Rabi oscillations.





.. figure:: assets/matter-stimulated/stimulated-probability-apmlitude-vs-k.svg
   :align: center

   Probabiity Amplitude as a function of :math:`k/\omega_m` within RWA, with parameters :math:`A=0.1, \theta_m=\pi/5, \phi=0`.



.. figure:: assets/matter-stimulated/stimulated-probability-apmlitude-vs-k-non-RWA.svg
   :align: center

   Probabiity Amplitude as a function of :math:`k/\omega_m` for each term in Jacobi-Anger expansion, with parameters :math:`A=0.1, \theta_m=\pi/5, \phi=0`.


To look at the resonances I define a Mathematica function to calculate the FWHM.


.. admonition:: Find FWHM Using Mathematica
   :class: hint

   The Mathematica code::

      fwhm[n_] := First@Differences[k /. {ToRules@Reduce[amplitude[k, 0.1, Pi/5, n] == 0.5 &&k > (1 - 0.5/Exp[n]/n^2)/n && k < (1 + 0.5/Exp[n]/n^2)/n, k]}]


.. figure:: assets/matter-stimulated/stimulated-probability-apmlitude-vs-k-resonance-width.svg
   :align: center

   Width of the resonances for :math:`A=0.1, \theta_m=\pi/5, \phi=0`.



How do we understand the resonance? Resonance width of each order of resonance (each n) should be calculated analytically.

.. admonition:: Lorentzian Distribution
   :class: hint

   Three-parameter Lorentzian function is

   .. math::
      f_{x_0,\sigma,A}(x)= \frac{1}{\pi} \frac{\sigma}{\sigma^2 + (x-x_0)^2},

   which has a width :math:`2\gamma`.

To find the exact width is hopeless since we need to inverse Bessel functions. Nonethless, we can assume that the resonance is very narrow so that :math:`\left\lvert F \right\rvert^2` doesn't change a lot. With the assumption, the FWHM is found be setting the amplitude to half, which is

.. math::
   \Gamma = \left\lvert \frac{\hat F}{n_0} \right\rvert = \left\lvert \hat k \tan 2\theta_m \frac{ J_{n_0}( n_0 \hat A \cos 2\theta_m/\hat k )}{n_0} \right\rvert .

To verify this result, we compare it with the width found numerically from the exact amplitude.

Given this result, and equation :eq:`eqn-12-element-and-F`, we infer that the coefficient in front of the phase term of 12 element in Hamiltonian is related to the width, while the the deviation from the exact resonance is given by :math:`\hat g=n_0 \hat k - 1`.

.. admonition:: Guessing The Width
   :class: note

   Given a Hamiltonian 12 element here

   .. math::
      h = \frac{F}{2} e^{i(n_0 \hat k - 1) \hat x} = \frac{F}{2} e^{i \hat g \hat x},

   the width of the resonance is

   .. _single-frequency-equation-eqn-single-frequency-width-guessing:

   .. math::
      \Gamma = \left\lvert \frac{F}{n_0} \right\rvert.
      :label: eqn-single-frequency-width-guessing



.. figure:: assets/matter-stimulated/stimulated-single-frequency-width-approximation-amp-point1.png
   :align: center

   Comparison of approximated width and numerical results for perturbation amplitude :math:`\hat A = \frac{A}{\omega_m} = 0.1`.


.. figure:: assets/matter-stimulated/stimulated-single-frequency-width-approximation-amp-1.png
   :align: center

   Comparison of approximated width and numerical results for perturbation amplitude :math:`\hat A = \frac{A}{\omega_m} = 1`.



.. admonition:: A Special Property of Bessel Function
   :class: note

   A special relation of Bessel function is that [Ploumistakis2009]_

   .. math::
      J_n(n \sech \alpha) \sim \frac{ e^{n(\tanh\alpha - \alpha)} }{\sqrt{ 2\pi n \tanh \alpha } }

   for large :math:`n`. As a matter of fact, for all positive :math:`\alpha`, we always have :math:`\tanh \alpha - \alpha < 0`.

   Using this relation and defining :math:`\sech \alpha = A \cos 2\theta_m`, which renders

   .. math::
      \alpha = 2 n \pi i + \ln \left(  \frac{ 1 \pm \sqrt{ -A^2 \cos^2 2\theta_m + 1 } }{ A\cos 2\theta_m } \right),\qquad n\in \mathrm{Integers},
      :label: eqn-width-alpha-solved

   where the Mathematica code to solve it is shown below,

      In[1]:= Solve[Exp[z] + Exp[-z] == 2/(A Cos[2 Subscript[\[Theta], m]]), z] // FullSimplify

   we find out an more human readabale analytical expression for the width

   .. math::
      \Gamma = \left\lvert 2 \hat k \tan 2\theta_m \frac{ e^{n ( \tanh \alpha - \alpha )} }{n_0 \sqrt{2\pi n_0 \tanh \alpha} } \right\rvert

   where :math:`\alpha` is solved out in :eq:`eqn-width-alpha-solved`.

   For small :math:`\alpha`, we have expansions for exponentials and hyperbolic functions :math:`\tanh \alpha \sim \alpha - \frac{\alpha^3}{3}`,

   .. math::
      \Gamma \asymp 2\tan 2\theta_m \frac{ e^{n \alpha^3/3} }{\sqrt{2\pi \alpha} n_0^{3/2}  }.

   However, it doesn't really help that much since :math:`n` is large and no expansion could be done except for significantly small :math:`\alpha`.


.. [Ploumistakis2009] I. Ploumistakis, S.D. Moustaizis, I. Tsohantjis, Towards laser based improved experimental schemes for multiphoton pair production from vacuum, Physics Letters A, Volume 373, Issue 32, 3 August 2009, Pages 2897-2900, ISSN 0375-9601, http://dx.doi.org/10.1016/j.physleta.2009.06.015.
(http://www.sciencedirect.com/science/article/pii/S0375960109007166)
Keywords: Pair production; Multiphoton processes; High intensity lasers




Perturbation Amplitude and Transition Probability
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


.. figure:: assets/matter-stimulated/pltPertAmpPertWaveNumTransitionAmp.svg
   :align: center

   Transition probability amplitude at different perturbation amplitude and perturbation wavenumber.
