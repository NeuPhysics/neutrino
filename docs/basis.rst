Basis
====================

Calculating neutrino oscillations requires a lot of rotations between different bases.





Rotation of States
----------------------

There are three most used bases, vacuum basis which diagonalizes the vacuum Hamiltonian, flavor basis where the flavor states stay, and instataneous matter basis which diagonializes the Hamiltonian with constant matter interaction or the instataneous matter interaction.


* The rotation from vacuum basis wavefunction :math:`\Psi_v` to flavor basis :math:`\Psi_f` is

  .. math::
     \Psi_f = R_{v2f}(\theta_v) \Psi_v,

  where the rotation is

  .. math::
     R_{v2f}(\theta_v) = \begin{pmatrix} \cos\theta_v & \sin \theta_v \\ -\sin \theta_v & \cos \theta_v \end{pmatrix}.

* The rotation from matter basis wavefunction :math:`\Psi_m` to flavor basis wavefunction :math:`\Psi_f` is

  .. math::
     \Psi_f = R_{m2f}(\theta_m) \Psi_m,

  where the roation is

  .. math::
     R_{m2f}(\theta_m) = \begin{pmatrix} \cos\theta_m & \sin \theta_m \\ -\sin \theta_m & \cos \theta_m \end{pmatrix}.

  The matter mixing angle is determined by the matter potential :math:`\lambda = \sqrt{2}G_F n_e`,

  .. math::
     \tan\theta_m = \frac{\sin 2\theta_v}{\cos 2\theta_v - \lambda/\omega},

  where :math:`\omega = \delta m^2 /2E` is the vacuum frequency of neutrinos.


.. admonition:: Rotation Twice
   :class: note

   A rotation from vacuum basis to flavor basis then to matter basis is simply the addition of the two rotation, i.e.,

   .. math::
      R_{v2f2m}(\theta_v,\theta_m) = \begin{pmatrix} \cos(\theta_v - \theta_m) & \sin ( \theta_v - \theta_m ) \\ -\sin (\theta_v-\theta_m) & \cos (\theta_v - \theta_m) \end{pmatrix}.




Rotation of Hamiltonian
--------------------------




.. admonition:: Vacuum Basis Hamiltonian
   :class: note

   .. math::
      H_v = -\frac{\omega}{2} \sigma_3 + \frac{\lambda}{2}\cos 2\theta_v \sigma_3 + \frac{\lambda}{2} \sin 2\theta_v \sigma_1.


Given the vacuum basis Hamiltonian :math:`H_v`, we can rotation it to flavor basis by using the rotation :math:`R_{v2f}(\theta_v)`

.. math::
   H_f = R_{v2f}(\theta_v) H_v R_{v2f}^{-1}(\theta_v).

Similarly, the flavor basis Hamiltonian :math:`H_f` can also be calculated from matter basis Hamiltonian :math:`H_m` ,

.. math::
   H_f = = R_{m2f}(\theta_m) H_m R_{v2f}^{-1}(\theta_m).


.. admonition:: Numerical Calculation of The Rotations
   :class: hint

   To write clean code, it is better to define and test there rotations first.




Refs & Notes
----------------------
