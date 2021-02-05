Synchronization in Neutrino Oscillations
======================================================

In neutrino oscillations, synchronization might happen when neutrino number density is high.

The approach is to use flavor isospin.

Neutrinos and Antineutrinos in Flavor Isospin Space
------------------------------------------------------------

We define the flavor isospin of neutrinos out of density matrix,

.. math::
   \rho = 1 + \frac{1}{2}\vec P \cdot \vec \sigma.

For antineutrinos, the flavor isospin is defined as

.. math::
   \bar\rho = 1 - \frac{1}{2} \vec P \cdot \vec \sigma.


.. admonition:: Why Negative Sign When Defining the Polarization Vector
   :class: note

   The reason is that we usually reformulate the formula for antineutrinos and define the anti-neutrinos to have negative frequency.


.. admonition:: Normalization Issue
   :class: toggle

   Normalization of polarization vectors are arbitary.

   When discussing the matter effect only, it's convinient to define it as

   .. math::
      \rho =& 1 + \frac{1}{2}\vec P \cdot \vec \sigma\\
      \bar\rho =& 1 - \frac{1}{2}\vec P \cdot \vec \sigma.

   However, when it comes to neutrino self-interactions, it's easier to normalize it with :math:`1/n_{\nu}`

   .. math::
      \rho =& 1 + \frac{1}{n_\nu}\frac{1}{2}\vec P \cdot \vec \sigma \\
      \bar\rho =& 1 - \frac{1}{n_\nu}\frac{1}{2}\vec P \cdot \vec \sigma.

   so that we can write the term

   .. math::
      \sqrt{2}G_{\mathrm F} \int dE' (\rho_{E'} - \bar \rho_{E'})

   to

   .. math::
      \sqrt{2}G_{\mathrm F} n_\nu \int dE' \frac{1}{n_\nu}(\rho_{E'} - \bar \rho_{E'}).

   Then we define

   .. math::
      \mu = \sqrt{2}G_{\mathrm F} n_\nu.


With flavor isospin defined, to derive an equation for flavor isospin, we need to decompose the Hamiltonian into vectors. The vacuum and matter part is easy. It's starightforward to write down the vacuum part and matter part of Hamiltonian using three dimemsional vectors,

.. math::
   \vec H_{\mathrm v} = & \omega_{\mathrm v}\begin{pmatrix}
   -\sin 2\theta_{\mathrm v}\\
   0\\
   \cos 2\theta_{\mathrm v}
   \end{pmatrix}\\
   \vec H_{\mathrm m} = & \begin{pmatrix}
   0\\
   0\\
   -\lambda
   \end{pmatrix}


But the neutrino coherent scattering term requires some simplifications.

We consider **isotropic and homogeneous model** which leads to

.. math::
   \sqrt{2}G_{\mathrm F} n_\nu \int d\vec p'^3 (1-\vec p \cdot \vec p') (\rho_{\vec p'} - \bar\rho_{\vec p'}) = \sqrt{2}G_{\mathrm F} n_\nu \int dE' \frac{1}{n_\nu}(\rho_{E'} - \bar\rho_{E'}).
   :label: eq-isotropic-homogeneous-self-interaction


We have to define a vector, which is an integral of polarization vector over all energies or frequencies,

.. math::
   \vec D = \int d\omega' \vec P(\omega').

Expression :eq:`eq-isotropic-homogeneous-self-interaction` becomes

.. math::
   \mu \vec D,

where :math:`\mu = \sqrt{2}G_{\mathrm F} n_\nu`.

For single energy or flavor isospins aligned in the same direction, this vector is in the direction of flavor isospin vector. If flavor isospins were initially prepared in completely random and uniformly distributed directions, :math:`\vec D\sim 0`.


Synchronization occurs when the neutrino number density becomes large. :math:`\vec D` will wobble around very fast due to the precessions of flavor isospins, but almost stays in one direction. All the spins precess with the same frequency which is determined by :math:`\mu`.

With vacuum contribution :math:`\vec H_{\mathrm v}` and matter contribution :math:`\vec H_{\mathrm m}` to the Hamiltonian, we expect :math:`\vec D` to precess around :math:`\vec H_{\mathrm v} + H_{\mathrm v}`, IF the precession frequency of flavor isospins around :math:`\vec D` is much larger than the precession frequency of :math:`\vec D` around  :math:`\vec H_{\mathrm v} + H_{\mathrm v}`.
