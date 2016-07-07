Review of Geometric Phases
====================================


Berry Phase
------------------

.. admonition:: Adiabatic Principle
   :class: note

   In quantum mechanics, adiabatic principle states that given a system Hamiltonian :math:`H(\xi(t))` which depends on a parameter :math:`\xi(t)` and varies slowly on time, the system will stay on the instantaneous eigenstate if it starts with such an eigenstate,

   .. math::
      \ket{\Psi_n(t)} = \exp\left( - \frac{i}{\hbar} \int_0^t E_n(t') dt' \right)\ket{\Psi_n(0)},

   where :math:`E_n(t)` is the instanteneous eigen value, i.e.,

   .. math::
      H(t) \ket{\Psi_n(t)} = E_n(t) \ket{\Psi_n(t)}.



The adiabatic approximation is, however, not always right. In general, we can always assume a general state to be

.. math::
   \ket{\Psi_n(t)} = c_n(t) \exp\left( - \frac{i}{\hbar} \int_0^t E_n(t') dt' \right)\ket{\Psi_n(0)},

as this form is pluged back to the Schrodinger equation, we find it has a form of phase

.. math::
   c_n(t) = c_n(0) e^{i\gamma_n(t)},

where

.. math::
   \gamma_n = i \int_0^t \bra{\Psi_n(t')} \frac{d}{dt'} \ket{\Psi_n(t')} dt'.

This phase is named after Berry thus Berry Phase.

What is special about Berry phase is that it is not always be removed even it looks like a global phase. The reason is that this integral becomes a loop integral when we are dealing with a periodic behavior of Hamiltonian :math:`H(\xi(t))`. And a loop integral becomes tricky since poles are to be considered.




Refs & Notes
------------------

1. Mehta, P. (2009). Topological phase in two flavor neutrino oscillations. Physical Review D, 79(9), 096013. doi:10.1103/PhysRevD.79.096013
