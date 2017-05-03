Conservations
===========================


Conservation of Lepton Numbers
--------------------------------



In the paper [Duan2009]_, Duan mentioned the conservation of neutrino lepton numbers.

In forward scattering, total neutrino number is conserved **for each momentum**. So the first conservation law we have is

.. math::
   (\partial_t + \hat v \cdot \nabla ) n_p(t,\mathbf x) = 0,
   :label: eqn-neutrino-number-conservation

where :math:`n_p(t,\mathbf x)` is the total neutrino number density for momentum :math:`p` at time :math:`t` and space point :math:`\mathbf x`.


[Duan2009]_ defined the traceless flavor matrix :math:`\rho_p(t,\mathbf x)` which describes the flavor states at each time and space point.

We will work in **mass basis**. In mass basis, we expect the vacuum Hamiltonian doesn't change the two populations of density matrix thus preserving the number density of different mass states.

We also notice that for vacuum oscillations, the unitary transformation

.. math::
   \rho_p(t,\mathbf x) = \exp\left( i \phi \sigma_3/2 \right) \rho_p(t,\mathbf x) \exp\left( -i \phi \sigma_3/2 \right)

will not change the equation of motion. This is a global phase transformation which leads to a global conservation law by Noether's theorem. The conserved quantity is the lepton numbers. This is also true with neutrino coherent scattering.

.. math::
   \partial_t n_L(t,\mathbf x) + \nabla \cdot \mathbf J_L(t,\mathbf x) = 0,
   :label: eqn-lepton-number-conservation

where

.. math::
   n_L(t,\mathbf x) &= \int_p n_p(t,\mathbf x) \Tr{\sigma_3 \rho_p(t,\mathbf x)} \\
   \mathbf J_L(t,\mathbf x) & = \int_p \hat v n_p(t,\mathbf x) \Tr{\sigma_3\rho_p(t,\mathbf x)}.


.. admonition:: Derivation of Conservation of Lepton Numbers
   :class: toggle

   Without any mathematical calculations, we rather expect this result to be true. Coherent scattering basically interchange the flavors of the two interacting neutrinos. Thus the neutrino gas as a total doens't change in the number of different leptonic flavors nor the mass states.

   To find the conservation law we take the trace of the equation of motion for vacuum oscillations. Since the trace of a commutator is zero, the right hand side becomes 0, i.e.,

   .. math::
      \Tr{(\partial_t + \hat v \cdot \nabla ) \rho_p(t,\mathbf x)} =0.

   Well, except it doesn't work.




To summarize, we found

1. conservation of total number of neutrino for each momentum :eq:`eqn-neutrino-number-conservation`, which is true only for forward scattering;
2. conservation of population in different mass states :eq:`eqn-lepton-number-conservation`, which is valid for vacuum and coherent scattering;


References and Notes
-----------------------

.. [Duan2009] Duan, H., Fuller, G. M., & Qian, Y.-Z. (2009). Neutrino Flavor Spin Waves. Journal of Physics G: Nuclear and Particle Physics, 36(10), 105003. https://doi.org/10.1088/0954-3899/36/10/105003
