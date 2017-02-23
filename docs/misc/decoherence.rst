Decoherence
===================


Neutrinos flavor oscillations is, in principle, related to decoherence due to wave packet speration dueing their propagation.


1. **What is the typical decoherence length?**

Reference [Kersten2016]_

Smaller than 100km for :math:`\Delta m_{13}`

Of order 1000km for :math:`\Delta m_{12}`

2. **How to describe decoherence effect phenomenologically?**

Reference [Akhmedov2014]_

.. math::
   i \frac{d}{dt} \rho = [H, \rho] -i \frac{1}{L_{\mathrm{coherence}}} (1-\hat D) \rho,

where :math:`\hat D` is the projection operator that projects out the diagonal elements.

Suppose we have only the decoherence effect, and

.. math::
   \rho = \begin{pmatrix}
   a & c\\
   c^* & b
   \end{pmatrix},

the equation describes a damping of the coherences (off diagonal elements),

.. math::
   i\frac{d}{dt} \begin{pmatrix}
   a & c\\
   c^* & b
   \end{pmatrix} = -i \frac{1}{L_{\mathrm{coherence}}}\begin{pmatrix}
   0 & c\\
   c^* & 0
   \end{pmatrix}.

So we have damping of :math:`c`,

.. math::
   \frac{d}{dt} c = - \frac{1}{L_{\mathrm{coherence}}}c,

which is solved

.. math::
   c = \exp \left( -\frac{t}{L_{\mathrm{coherence}}} \right) .


3. **Think of decoherence in flavor isospin picture.**

Density matrix and flavor isospin are related to each other

.. math::
   \rho = \frac{1}{2} ( 1 +  \boldsymbol{\sigma} \cdot \mathbf P ).

Coherence elements (off diagonal elements) in the density matrix are related to :math:`P_1, P_2`.

However, the Hamiltonian forces the flavor isospin to precess.

The equation of motion is

.. math::
   \frac{d}{dt}(s_k) + (\delta_{k1}s_1 + \delta_{k2}s_2) = (\mathbf s \times \mathbf H)_k.


4. **Kinetic spread of wave packet corresponds to an energy spread of the wave packet.**

Reference [Kersten2016]_

The energy spread for supernova neutrinos can be as large as 1MeV.






Refs & Notes
----------------


.. [Akhmedov2014] Akhmedov, E., Kopp, J., & Lindner, M. (2014). `Decoherence by wave packet separation and collective neutrino oscillations <http://arxiv.org/abs/1405.7275>`_
.. [Kersten2016] Kersten, J., & Smirnov, A. Y. (2016). `Decoherence and oscillations of supernova neutrinos <https://doi.org/10.1140/epjc/s10052-016-4187-5>`_. European Physical Journal C, 76(6).
