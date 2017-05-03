Coherent Scattering
===========================



Equation of Motion for Neutrinos
----------------------------------

In general the equation of motion will always be

.. math::
   (\partial_t + \hat v \cdot \nabla) \rho = - i [H, \rho].

Several different density matrices are introduced during the past years.

One of them is to denote the density matrix as it of the neutrino gas, which leads to the total neutrino number density as the trace of the density matrix, i.e.,

.. math::
   n_p(t,\mathbf x) = \operatorname{Tr} \rho_p(t,\mathbf x).

This definition of the density matrix inherents the true statistical meaning of the neutrino gas. However, it's not that convinient as we would be discussing the flavors of the gas at each spacetime point. Thus it is usually normalized

.. math::
   \bar\rho_p(t,\mathbf x) = \rho_p(t,\mathbf x)/n_p(t,\mathbf x).

Meanwhile, the trace of the matrix is not our concern in most cases, since we know the trace is always 1 here. So we remove the trace of the density matrix, and redefine the density matrix

.. math::
   \tilde \rho_p(t,\mathbf x) = \rho_p(t,\mathbf x)/n_p(t,\mathbf x) - I/\operatorname{Tr}I,

where :math:`I` is the identity matrix and :math:`\Tr{I}` is basically the number of flavors, which we define as :math:`N`.

For antineutrinos, we have the freedom to put the signs in the equation or the Hamiltonian. Only the relative signs matter. If we think about antineutrinos as neutrinos going back in time, as interpreted in Feynman diagrams. So the energy should be of oposite sign thus negative. Then we have negative frequency.
