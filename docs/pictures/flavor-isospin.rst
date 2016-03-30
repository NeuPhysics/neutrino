Flavor Isospin
======================================

The Hamiltonian in flavor basis with matter interaction for neutrino is


.. math::
   H = \frac{1}{2} ( {\color{red}\lambda} - \omega_v \cos 2\theta_v ) \sigma_3 + \frac{1}{2} \omega_v \sin 2\theta_v,
where :math:`\omega_v = \frac{\Delta m^2}{2E}`. For antineutrino, the Hamiltonian it obeys is

.. math::
   \bar H = \frac{1}{2} ( {\color{red}-\lambda } - \omega_v \cos 2\theta_v ) \sigma_3 + \frac{1}{2} \omega_v \sin 2\theta_v.

For reference purpose, the neutrino-neutrino interaction for neutrino is

.. math::
   H_{\nu\nu} = \sqrt{2}G_F \int\mathrm{d}^3 \mathbf{p}' ( 1 - \hat{\mathbf{p}}\cdot \hat{\mathbf{p}}' ) (\rho_{\mathbf{p}'} - \bar\rho_{ \mathbf{p}' }),

where :math:`\rho`'s are the density matrices.


Neutrino Flavour Isospin
---------------------------------


.. admonition:: Mathematical Reason
   :class: hint

   The reason behind this isospin for neutrino flavors is that Pauli matrices plus identity form a complete basis for all 2 by 2 matrices.

Neutrino flavour isospin [duan2006]_

.. math::
   \vec s = \Psi^{\dagger} \frac{\boldsymbol\sigma}{2} \Psi,

where in flavor basis

.. math::
   \Psi = \begin{pmatrix} \psi_e \\ \psi_x \end{pmatrix}.

We also find the component of Hamiltonian in :math:`\{ I, \sigma_1,\sigma_2,\sigma_3 \}` basis. However, in this specific problem, we only need :math:`\{\sigma_1,\sigma_2,\sigma_3 \}` since we already removed the identity from Hamiltonian. With this convention, we define the Hamiltonian vector :math:`\vec H` using

.. math::
   H = -\frac{\boldsymbol{\sigma} }{2}\cdot \vec H.

In order to have a look at the effect of different components, we also define :math:`\vec H_{v}` and :math:`\vec H_m`,

.. math::
   H_v &= - \frac{\boldsymbol{\sigma}}{2} \cdot \vec H_v \\
   H_m &= - \frac{\boldsymbol}{\sigma} }{2} \cdot \vec H_m.

Not the equation of motion becomes

.. math::
   \frac{d}{dx} \vec s = \vec s \times \vec H.

.. admonition:: Deriving Equation of Flavor Isospin
   :class: note

   Here in this formalism we just plugin to compare with the original equation of motion.

   However, a more systematic and rigorous method is given in [duan2006]_ .





Previously we have already seen the equations for a spinning in magnetic field :ref:`magnetic-spin-angular-momentum-eom`,

.. math::
   \frac{d}{dt}\vec L = \gamma \vec L \times \vec B,

where :math:`\gamma = \frac{-e}{2m_e}`.


Another interesting analogy comes from the equation of motion for a spinning top

.. math::
   \frac{d}{dt}\vec S  =  \frac{\partial}{\partial t} \vec S  - \vec S \times \vec \Omega,

where :math:`\vec\Omega = \vec n \dot\phi`. Consider conservation of momentum, we have

.. math::
   \frac{\partial}{\partial t} \vec S  = \vec S \times \vec \Omega,

which is similar to the neutrino isospin equation of motion. :math:`\vec \Omega` corresponds to :math:`\vec H`.

Graphical Representation of Flavor Isospin
------------------------------------------------------


.. figure:: assets/flavor-isospin/flavor-isospin-graphics-vacuum-only.png
   :align: center

   Graphical representation of vacuum Hamiltonian







Refs & Notes
----------------------

.. [duan2006] Duan, H., Fuller, G. M., & Qian, Y.-Z. (2006). `Collective neutrino flavor transformation in supernovae <http://journals.aps.org/prd/abstract/10.1103/PhysRevD.74.123004>`_ Physical Review D, 74(12), 1–16. http://doi.org/10.1103/PhysRevD.74.123004
