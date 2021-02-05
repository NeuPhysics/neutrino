Questions about Halo Problem
============================================

Differential Cross Section
-----------------------------

.. figure:: assets/halo-questions/neutrino-scattering.png
   :align: center

   Scattering of neutrinos off electrons.



Giunti derived the general form of differential cross section for all possible neutrino scatterings off electrons, equation  5.19 in his book [Giunti2007]_. We plugin differential forms of Mandelstam variables to get the differential cross section related to neutrino scattering angles,

.. math::
   \frac{d\sigma}{d ( 2 E_\nu E_\nu' \cos \theta_\nu)} = \frac{G_F}{\pi} \left( g_1^2 + g_2^2 \left( 1 - \frac{E_\nu' \cos \theta_\nu}{m_e} \right) - g_1 g_2 \frac{E_\nu' \cos\theta_\nu}{ E_\nu } \right),

where :math:`E_\nu=p_\nu` and :math:`E_\nu'=p_\nu'` are the energies of neutrinos before and after scattering.

Applying conservation of four momentum, we have

.. math::
   p_\nu' = \frac{ m_e (m_e + p_\nu)}{ m_e + p_\nu - p_\nu \cos \theta_\nu }.


We are interested in the energy scale that :math:`p_\nu \gg m_e`. The energy of scattered neutrinos equations simplify to

.. math::
   p_\nu' = \frac{m_e}{ 1-\cos\theta_\nu }.


Plugin this into the differential cross section and keep only 0 orders of :math:`m_e/E_\nu`, we have

.. math::
   \frac{d\sigma}{d\cos \theta_\nu} = \frac{2 E_\nu m_e}{(1-\cos\theta_\nu)^2}  \frac{G_F}{\pi} \left( g_1^2 + g_2^2 \frac{ 1 -2\cos\theta_\nu }{1 -\cos\theta_\nu}  \right)

For neutral current, Giunti shows that the values of :math:`g_i` are [Giunti2007]_

.. math::
   g_1 &= g_2 =  -0.27 \\
   \bar g_1 &= \bar g_2 = 0.23,

where bar indicates the values for antineutrinos.


.. admonition:: Giunti's formula
   :class: note

   The differential cross section formula 5.29 in [Giunti2007]_ shows

   .. math::
      \frac{d\sigma}{ d\cos \theta_e}  = \sigma_0 \frac{ 4E_\nu^2 (m_e + E_\nu)^2 \cos \theta_e } { [ (m_e + E_\nu)^2 - E_\nu^2\cos^2\theta_e ]^2 } \left[ g_1^2 + g_2^2 \left( 1 - \frac{ 2 m_e E_\nu \cos^2\theta_e }{ (m_e+E_\nu)^2 - E_\nu^2 \cos^2\theta_e } \right)^2  - g_1 g_2 \frac{ 2 m_e^2 \cos^2\theta_e }{ ( m_e + E_\nu )^2 - E_\nu^2 \cos^2\theta_e } \right].


   We are interested in supnernova neutrinos whose energy is usually larger than mass of electrons. We set :math:`m_e/E_\nu \to 0`.

   .. math::
      \frac{d\sigma}{ d\cos \theta_e}  = \sigma_0 \frac{ 4 E_\nu^2 \cos \theta_e } { [ 1 - \cos^2\theta_e ]^2 } .



   We need a relation between :math:`\theta_e` and :math:`\theta_\nu`. The way to derive it is to use conservation of four momentum.

   .. math::
      E_\nu' + \sqrt{p_e'^2 - m_e^2} &= m_e + E_\nu \\
      p_\nu' \sin\theta_\nu + p_e' \sin\theta_e &= 0\\
      p_\nu' \cos\theta_\nu + p_e' \cos\theta_e &= p_\nu.

   We imediately notice that for backward scattering, :math:`\theta_e = \pi + \theta_\nu`.




.. [Giunti2007] Guinti & Kim, Fundamentals of Neutrinos and Astrophysics




MISC
-----------------

1. Reflection coefficients for neutrinos and anti-neutrinos are different.
