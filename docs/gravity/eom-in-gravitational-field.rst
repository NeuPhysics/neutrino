Equation of Motion in Gravitational Field
==========================================

Cardall and Fuller derived the formalism for neutrino oscillations in gravitational field in [Cardall1996]_.

They derived the Schrodinger like equation of motion by generalizing the gravitational effect to some potential in Dirac equation,

.. math::
	i \frac{d}{d\lambda} \chi = \left( \frac{M_f^2}{2} + \vec v \cdot \vec A_f\mathscr P_L  \right) \chi,

where :math:`\lambda` is an invariant parameter for world line of neutrinos, which is usually choose to be proper time :math:`\tau` (:math:`d\tau = \sqrt{ g_{\mu\nu} dx^\mu dx^\nu}`), :math:`\chi` is the wave function which has two amplitudes

.. math::
	\chi = \begin{pmatrix}
	\psi_e \\
	\psi_x
	\end{pmatrix},

:math:`M_f^2` is the mass matrix in flavor basis, :math:`\mathscr P_L` is the left-handed projection operator.


.. admonition:: About Mass Matrix
	:class: note

	I think the so called mass matrix here should be vacuum Hamiltonian, otherwise the dimension is not correct in the Dirac equation.




They found that Schwarzchild metric shifts energy on vacuum oscillations, thus shifting the oscillation frequency, which is in fact obviously true.




References and Notes
----------------------

.. [Cardall1996] Cardall, C. Y., & Fuller, G. M. (1996). `Neutrino oscillations in curved spacetime: an heuristic treatment <https://doi.org/10.1103/PhysRevD.55.7960>`_, 55(12), 7.