Interference
============================================



.. admonition:: Summary
   :class: note

   Overall the system has at least two limits,

   1. strong interference regime (the wavelength of the perturbations are of the same orders);
   2. low-interference regime (one of the perturbations has a wavelength much larger than the others').

   For either case, the system is explained within the ralm of superpositions of multiple Rabi oscillations.

   As for the first case, th criteria is related to both the resonance itself and the size of physical system we are interested in.

   1. Each mode has an associated resonance, and explained by a single Rabi oscillation. Higher orders have much smaller resonance width than low orders.
   2. Whether a mode is important to the system is determined by Q value, which is defined as the ratio of distance to resonance and resonance width.
   3. However a mode with a wavelength that is much larger than the system is not counted since the resonance has not accumulated any significant transition probabilities within the region of the physical system.

   **However, we do not have a cystal clear understanding of such a strong interference.**

   The second case is essentially some limit of the strong interference. With Komogorov spectra of matter, the resonance is simplified in some sense. One of the limits is that one of the matter perturbations has much larger wavelength than the others, which will behave as a shift of the background matter density, within one wavelength of the small wavelength perturbations. Here we use two frequencies as examples, c.f. :numref:`interference-adding-new-destroy-resonance-q-value`.

   1. Even if the short wavelength one is exactly on resonance, adding the second perturbation as a background shift could move the system out of the resonance. The math behind it is related to the amplitude,

      .. math::
         \frac{ \left\lvert  B_{n}  \right\rvert^2 }{ \left\lvert    B_{n}  \right\rvert^2 + ( n  k - \omega_m )^2  },

      where :math:`n  k - \omega_m = 0` for the resonance situation. As we add in the second long wavelength perturbation, :math:`B_{n}`, :math:`\omega_m` will change. Nonetheless the relative change in :math:`B_n` is small while the change in :math:`nk-\omega_m` is huge compared to :math:`B_n` value, if the amplitude of the new perturbation is large enough, i.e., :math:`A_2 \gg \lvert B_n\rvert`.
   2. The caveat is that the wavelength of the second perturbation :math:`k_2` must be within a range much smaller than :math:`k_1`, and much larger than the resonance transition probability wavelength, roughly speaking, :math:`k_1\gg k_2 \gg \lvert B_n\rvert`.
   3. The newly added long wavelength merely has any effect when the system is in a region :math:`\mathrm{mod}(k_2 x,\pi)\sim 0`, since :math:`A_2\sin(k_2x)\sim 0` for these values. Such regions probabily will appear multiple times within the size of physical system. Then we see accumulation effect, so that the transition amplitude will rise as we go furthure out.

   **From this point of view, the resonance is never destroyed since the accumulation will always be there.**




In the calculation of multi-frequency matter background,

.. math::
   \delta\lambda_N = \sum_{a=1}^N A_a \sin(k_a x + \phi_a),

we derived the equation of motion

.. math::
   i \partial_x \Psi = H \Psi,

where

.. math::
   \Psi = \begin{pmatrix}
   \psi_{b1} \\
   \psi_{b2}
   \end{pmatrix},

is the wave function in the T basis (new basis unitary transform from background matter basis using T matrix) and

.. math::
   H = \begin{pmatrix}
   0 & h_N \\
   h_N^* & 0
   \end{pmatrix},

where

.. math::
   h_N = -\frac{1}{2}\sum_{n_1=-\infty}^\infty \cdots \sum_{n_N=-\infty}^\infty B_N\Phi_N e^{i(\sum_a^{N} n_a k_a - \omega_m)x},

and

.. math::
   B_N &= (-i)^{\sum_a n_a} \left( \sum_a n_a k_a \right) \left( \prod_a J_{n_a}\left( \frac{A_a}{k_a}\cos 2\theta_m \right) \right),\\
   \Phi_N &= e^{i\left( \sum_a n_a \phi_a \right)}.





Apply Approximations to Two Frequencies
--------------------------------------------------

We could identify the important combinations of n's :math:`\{n_1, \cdots, n_N \}` so that we can approximate the actual result.


The important question is combining multiple lists of n's is not intuitively easy to understand. Here we consider the effect of adding new list of n's to the system.

For simplicity a simplified system will be used,

.. math::
   i\partial_x  \begin{pmatrix}
   \psi_{b1} \\
   \psi_{b2}
   \end{pmatrix} = \begin{pmatrix}
   0 & A_1 e^{ i \phi_1 x } +A_2 e^{ i \phi_2 x } \\
   A_1^* e^{ - i \phi_1 x } + A_2^* e^{ -i \phi_2 x } & 0
   \end{pmatrix}
   \begin{pmatrix}
   \psi_{b1} \\
   \psi_{b2}
   \end{pmatrix}.

Notice that :math:`\phi_n` is always real but :math:`A_n` are either real or pure imaginary.

The matrix equation can be rewritten as systems of differential equations,

.. math::
   i \partial_x \psi_{b1} &= (A_1 e^{ i \phi_1 x } +A_2 e^{ i \phi_2 x } ) \psi_{b2}, \\
   i \partial_x \psi_{b2} & = (A_1^* e^{ - i \phi_1 x } + A_2^* e^{ -i \phi_2 x }) \psi_{b1}.

This set of equations is solved by rewrite them to a second order differential equation

.. math::
   \partial_x^2 \psi_{b2} + \frac{ A_1^* e^{ - i \phi_1 x } + A_2^* e^{ -i \phi_2 x }) }{\partial_x (A_1^* e^{ - i \phi_1 x } + A_2^* e^{ -i \phi_2 x }) } \partial_x \psi_{b2} + (A_1^* e^{ - i \phi_1 x } + A_2^* e^{ -i \phi_2 x }) (A_1 e^{ i \phi_1 x } +A_2 e^{ i \phi_2 x } ) \psi_{b2}.
   :label: two-n-list-second-order-eq-o-m

As a comparison, we also write down the equation for single n list,

.. math::
   \partial_x^2 \psi_{b2} + \left( \frac{i}{\phi_1}  \right) \partial_x \psi_{b2} + \lvert A_1 \rvert^2 \psi_{b2} = 0.


.. admonition:: Approximations?
   :class: note


   For single n list equation, the second term dominates if :math:`\phi_1` is much smaller than 1. In the language of physics, the second term dominates if the system is very close to resonance.

   .. admonition:: :math:`\phi_n` and resonance
      :class: note

      :math:`\phi_n` is in fact the deviation from exact resonance.

      .. math::
         \phi_n = \sum_{a}^N n_a k_a - \omega_m.

   In the multi-n-list case, this domination is easily destroyed. As an example, suppose we have :math:`A_1= A_2 = A` and :math:`\phi_2 = 10^{10}\phi_1`, the second term in equation :eq:`two-n-list-second-order-eq-o-m` becomes

   .. math::
      \frac{ e^{ - i \phi_1 x } + e^{ -i 10^{10}\phi_1 x }) }{\partial_x (e^{ - i \phi_1 x } + e^{ -i 10^{10}\phi_1 x }) } \partial_x \psi_{b2} = \frac{ e^{ - i \phi_1 x } + e^{ -i 10^{10}\phi_1 x }) }{ (-i\phi_1 e^{ - i \phi_1 x } - i 10^{10}\phi_1 e^{ -i 10^{10}\phi_1 x }) } \partial_x \psi_{b2},

   which can be dropped on as long as :math:`\phi_1` is not as small as :math:`10^{-10}`.

   We exaggerated the situation.



Resonance Destroyed
----------------------------


General Ideas
~~~~~~~~~~~~~~~~~~~~~

We first investigate two frequencies. The Hamiltonian for a single frequency matter perturbation is

.. math::
   \hat{\mathbf{H}} = \sum_{n=-\infty}^{\infty} \begin{pmatrix}
   0 & \frac{1}{2} \hat B_n e^{i(n \hat k - 1)\hat x} \\
   \frac{1}{2} \hat B_n^* e^{-i(n \hat k - 1)\hat x} & 0
   \end{pmatrix},


where

.. math::
   \hat B_n = (-i)^n \tan 2\theta_{\mathrm{m}} n \hat k  J_n (\frac{\hat A}{\hat k} \cos 2\theta_{\mathrm{m}}).

In some conditions, even we have on of the matter frequancy at resonance, this resonance could be destroyed when a new matter frequency is destroyed. Numerical calculations show that this could happen if the new perturbation is off resonance and with larger :math:`B_{n_2}`.

Let's first set this first perturbation at resonance. Suppose we add in another matter perturbation with a frequency which is higher, i.e., :math:`k_2\ll k`. Since the wavelength of this new perturbation is much larger, we will assume it doesn't change within one wavelength of the first perturbation. Thus it behaves as an additional background. Will this new background destroy the resonance? Illustration of this idea is shown in :numref:`interference-adding-new-destroy-resonance-q-value`.

.. _interference-adding-new-destroy-resonance-q-value:

.. figure:: assets/interference/second-freq-as-bg-illustration.png
   :align: center

   The two matter perturbations

To quantify this idea, we calculate the Q values for different modes with and without the new frequency. The procedure should be

#. Prepare the parameters: :math:`\omega_v`, :math:`\lambda_0` (background matter profile), :math:`\lambda_1` (perturbation amplitude for first perturbation), :math:`k_1` (perturbation wavenumber for first perturbation)
#. Calculate the Q values.
#. Add in :math:`\lambda_2` (perturbation amplitude for the second perturbation) and treat this new perturbation as a constant within one wavelength of the first perturbation. Just use some random phase for the new matter profile, i.e., set :math:`\sin(k_2 x)` to some resonanable value.
#. Recalculate the Q values.




Without the new perturbation (Mathematica Code)::

   deltamsquare13 = 2.6*10^(-15);(*MeV^2*)
   energy20 = 20;(*Energy in units of MeV*)
   thetaV = ArcSin[Sqrt[0.093]]/2
   omegaVKK = OmegaVacuum[energy20, deltamsquare13](*MeV*)(*deltamsquare13/(2 energy20)(*MeV*)*)

   lambdaNKK = 0.5*Cos[2 thetaV] omegaVKK (*MeV*)

   onekListKK = {1};
   oneaListKK =(*{0.1};*){0.02 (MeVInverse2km[ 2 Pi/(omegaMKK onekListKK[[1]])]/1500)^(5/3)};
   onephiListKK = {0};

   Part[qValueOrderdList[listNGenerator[1, 10], onekListKK, oneaListKK, onephiListKK, thetamV], 1 ;; 10];
   Grid@%

which returns the Q value results for each modes::

   {1}	0.
   {-1}	577810.
   {2}	1.75394*10^10
   {-2}	5.26182*10^10
   {3}	4.25927*10^15
   {-3}	8.51854*10^15
   {4}	1.16361*10^21
   {-4}	1.93935*10^21
   {5}	3.76761*10^26
   {-5}	5.65142*10^26

Adding in the new frequency::

   phi2 = Pi/2/100;

   twoaListKK =(*{0.1,0.1};*){0.02 (MeVInverse2km[2 Pi/(omegaMKK*twokListKK[[1]])]/1500)^(5/3),
   0.02 (MeVInverse2km[2 Pi/(omegaMKK twokListKK[[2]])]/1500)^(5/3)};

   lambdaNKK2 = 0.5*Cos[2 thetaV] omegaVKK + Sin[phi2]*twoaListKK[[2]]*omegaMKK(*MeV*)

   omegaMKK2 = OmegaMatter2[lambdaNKK2, thetaV, omegaVKK](*MeV*)
   thetamV2 = Mod[ArcTan[Sin[2 thetaV]/(Cos[2 thetaV] - (lambdaNKK2/omegaVKK)^2)]/2, Pi]

   onekListKK2 = {1}*omegaMKK/omegaMKK2;
   oneaListKK2 =(*{0.1};*){0.02 (MeVInverse2km[2 Pi/(omegaMKK2 onekListKK2[[1]])]/1500)^(5/3)};

   Part[qValueOrderdList[listNGenerator[1, 10], onekListKK2, oneaListKK2, onephiListKK, thetamV2], 1 ;; 10]
   Grid@%

and the results for Q values of different modes are::

   {1}	246.833
   {-1}	577687.
   {2}	1.75752*10^10
   {-2}	5.26655*10^10
   {3}	4.27026*10^15
   {-3}	8.53505*10^15
   {4}	1.16758*10^21
   {-4}	1.94507*10^21
   {5}	3.78384*10^26
   {-5}	5.67375*10^26


The corresponding plots are shown in :numref:`second-freq-as-bg-example-1-first-freq-only` and :numref:`second-freq-as-bg-example-1-with-second-freq-as-bg`

.. _second-freq-as-bg-example-1-first-freq-only:

.. figure:: assets/interference/second-freq-as-bg-example-1-first-freq-only.png
   :align: center

   Only the first frequency which is at resonance



.. _second-freq-as-bg-example-1-with-second-freq-as-bg:

.. figure:: assets/interference/second-freq-as-bg-example-1-with-second-freq-as-bg.png
   :align: center

   With the second frequency added in but only as a shift in background density

What determines the amplitude is

.. math::
   \frac{ \left\lvert  B_{n}  \right\rvert^2 }{ \left\lvert    B_{n}  \right\rvert^2 + ( n  k - \omega_m )^2  }.

In this example, the coefficient in unit of :math:`\omega_m` for one perturbation only is

.. math::
   \lvert B_1 \rvert = 3.46135\times 10^{-6},

while it shifts a little bit when the second frequency is added in as a background shift, in unit of :math:`\omega_m`,

.. math::
   \lvert B_1' \rvert = 3.46356\times 10^{-6}.

We set the first frequency at resonance, which means

.. math::
   k - \omega_m = 0.

With the apprearance of the second frequency, what we have now is, in unit of :math:`\omega_m`,

.. math::
   k - \omega_m' = 0.000854192,

which is far beyond the width of the resonance.


Some Artifical Systems
~~~~~~~~~~~~~~~~~~~~~~~~~



.. figure:: assets/interference/second-freq-as-bg-1-divided-10-10-20-30-100-1000-10000-matter-density.png
   :align: center

   Matter profiles with one wavelength of the first perturbation


The resonance from the first perturbation is destroyed as the second perturbation grows much larger than it.

.. figure:: assets/interference/second-freq-as-bg-1-divided-10-10-20-30-100-1000-10000-full-numerical.png
   :align: center

   Full numerical solutions


The hint is, the shift of the background matter profile is related to the destruction effect, whether it's true destruction or effective destruction (destruction within a region).


An investigation of the most important mode shows that it is destroyed due to the a shift of background matter density.

.. figure:: assets/interference/second-freq-as-bg-1-divided-10-10-20-30-100-1000-10000-log.png
   :align: center

   Resonance destruction of the first mode


To verify how the interference actually works, we plot the full numerical calculation and the {1,0} mode, for comparision

.. _second-freq-as-bg-1-d-10-1-d-1000-1-d-10000-1-d-200000-1000-full-numerical-with-10-mode-with-gridlines:

.. figure:: assets/interference/second-freq-as-bg-1-d-10-1-d-1000-1-d-10000-1-d-200000-1000-full-numerical-with-10-mode-with-gridlines.png
	:align: center

	The solid lines are the full numerical calculations of the system; Dashed lines are {1,0} mode of the corresponding parameters; Vertical grid lines are the positions of zero amplitudes of the second matter perturbation.


It is clearly shown in :numref:`second-freq-as-bg-1-d-10-1-d-1000-1-d-10000-1-d-200000-1000-full-numerical-with-10-mode-with-gridlines` that each vicinity of zero amplitude for the second perturbation, the transition amplitude will increase, due to the resonance of the first perturbation.


What's more interesting is that as :math:`A_2` becomes much larger than :math:`A_1`, the resonance seams to be destroyed. As an example, here we take :math:`A_2=0.0346135, A_1=0.0000357347` both in unit of :math:`\omega_m`, which means :math:`A_2` is almost three orders larger than :math:`A_1`. The results are shown in :numref:`second-freq-as-bg-1-d-10-1-d-1000-1-d-10000-1-d-200000-10000-full-numerical-with-10-mode-with-gridlines`.

.. _second-freq-as-bg-1-d-10-1-d-1000-1-d-10000-1-d-200000-10000-full-numerical-with-10-mode-with-gridlines:

.. figure:: assets/interference/second-freq-as-bg-1-d-10-1-d-1000-1-d-10000-1-d-200000-10000-full-numerical-with-10-mode-with-gridlines.png
	:align: center

	The solid lines are the full numerical calculations of the system; Dashed lines are {1,0} mode of the corresponding parameters; Vertical grid lines are the positions of zero amplitudes of the second matter perturbation.





Refs & Notes
---------------------
