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
     \tan 2\theta_m = \frac{\sin 2\theta_v}{\cos 2\theta_v - \lambda/\omega},

  where :math:`\omega = \delta m^2 /2E` is the vacuum frequency of neutrinos.


.. admonition:: Rotate Twice
   :class: note

   A rotation from vacuum basis to flavor basis then to matter basis is simply the addition of the two rotation, i.e.,

   .. math::
      R_{v2f2m}(\theta_v,\theta_m) = \begin{pmatrix} \cos(\theta_v - \theta_m) & \sin ( \theta_v - \theta_m ) \\ -\sin (\theta_v-\theta_m) & \cos (\theta_v - \theta_m) \end{pmatrix}.



Rotation of Pauli Matrices
--------------------------------------------------


Rotate :math:`\sigma_1` from vacuum basis to flavor basis,

.. math::
   &R_{v2f}(\theta) \sigma_1 R_{v2f}^{\dagger} \\
   =& \sin 2\theta \sigma_3 + \cos 2\theta \sigma_1.


Rotate :math:`\sigma_3` from vacuum basis to flavor basis,


.. math::
   &R_{v2f}(\theta) \sigma_3 R_{v2f}^{\dagger} \\
   =&  \begin{pmatrix} \cos \theta & \sin \theta \\ -\sin \theta & \cos\theta \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} \begin{pmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos\theta \end{pmatrix} \\
   =& \cos 2\theta \sigma_3 - \sin 2\theta \sigma_1.


Rotation of Hamiltonian
--------------------------


Given the vacuum basis Hamiltonian :math:`H_v`, we can rotation it to flavor basis by using the rotation :math:`R_{v2f}(\theta_v)`

.. math::
   H_f = R_{v2f}(\theta_v) H_v R_{v2f}^{-1}(\theta_v).

Similarly, the flavor basis Hamiltonian :math:`H_f` can also be calculated from matter basis Hamiltonian :math:`H_m` ,

.. math::
   H_f = R_{m2f}(\theta_m) H_m R_{v2f}^{-1}(\theta_m).



.. admonition:: Vacuum Basis Hamiltonian
   :class: note

   The Hamiltonian in this basis is composed of vacuum Hamiltonian which is diagonalized and the matter potential rotated from flavor basis,

   .. math::
      H_v &= -\frac{\omega}{2} \sigma_3 + \frac{\lambda}{2} \begin{pmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos\theta \end{pmatrix}  \sigma_3 \begin{pmatrix} \cos \theta & \sin \theta \\ -\sin \theta & \cos\theta \end{pmatrix} \\
      &= -\frac{\omega}{2} \sigma_3 + \frac{\lambda}{2}\cos 2\theta_v \sigma_3 + \frac{\lambda}{2} \sin 2\theta_v \sigma_1.




.. admonition:: Flavor Basis Hamiltonian
   :class: note

   .. math::
      H_f = - \frac{\omega}{2} \cos 2\theta \sigma_3 +  \frac{\omega}{2} \sin 2\theta \sigma_1 +  \frac{\lambda}{2} \sigma_3.



As a consistancy check, we now rotate Hamiltonian in vacuum basis to flavor basis.

.. math::
   H_f =& \begin{pmatrix} \cos \theta & \sin \theta \\ -\sin \theta & \cos\theta \end{pmatrix} H_v \begin{pmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos\theta \end{pmatrix}\\
   =& \left(-\frac{\omega}{2} + \frac{\lambda}{2} \cos 2\theta \right) \begin{pmatrix} \cos \theta & \sin \theta \\ -\sin \theta & \cos\theta \end{pmatrix} \sigma_3 \begin{pmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos\theta \end{pmatrix} \\
   &+ \frac{\lambda}{2} \sin 2\theta \begin{pmatrix} \cos \theta & \sin \theta \\ -\sin \theta & \cos\theta \end{pmatrix} \sigma_1 \begin{pmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos\theta \end{pmatrix} \\
   =& \left(-\frac{\omega}{2} + \frac{\lambda}{2} \cos 2\theta \right) ( \cos 2\theta \sigma_3 - \sin 2\theta \sigma_1 ) + \frac{\lambda}{2}\sin 2\theta ( \sin 2\theta \sigma_3 + \cos 2\theta \sigma_1 ) \\
   =& -\frac{\omega}{2} \cos 2\theta \sigma_3 + \frac{\omega}{2}\sin 2\theta \sigma_1 + \frac{\lambda}{2} ( \cos^2 2\theta + \sin ^2 2\theta ) \sigma_3 \\
   =& -\frac{\omega}{2} \cos 2\theta \sigma_3 + \frac{\omega}{2}\sin 2\theta \sigma_1 + \frac{\lambda}{2}\sigma_3 .



.. admonition:: Numerical Calculation of The Rotations
   :class: hint

   To write clean code, it is better to define and test there rotations first.






Examples of Rotating Basis
-------------------------------------


Rotate From Vacuum to Another Basis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In vacuum basis, Hamiltonian with matter interaction is

.. math::
   H_v = -\frac{\omega}{2} \sigma_3 + \frac{\lambda}{2}\cos 2\theta_v \sigma_3 + \frac{\lambda}{2} \sin 2\theta_v \sigma_1,

where we have got a contribution of :math:`\sigma_3` from matter interaction. By carefully defining a transformation that removes this contribution, we can define a new basis in which the wavefunction is :math:`\Psi_b`, which is related to the vacuum basis wavefunction in the following way,

.. math::
   \begin{pmatrix}\psi_{v1} \\ \psi_{v2} \end{pmatrix}  = \begin{pmatrix}
   e^{-i \eta(x) x} & 0 \\  0 & e^{i \eta(x) x}
   \end{pmatrix} \begin{pmatrix}\psi_{b1} \\ \psi_{b2} \end{pmatrix},

where :math:`\eta(x)` is a function of position. We can find the requirement of it by plugging the wavefunction into Schrodinger equation, which results in

.. math::
   \eta + x \frac{d\eta }{dx} = \frac{\lambda}{2} \cos 2\theta_v.


.. admonition:: Derivation of :math:`\eta`
   :class: note

   Plug the transformation into Schrodinger equation,

   .. math::
      \mathrm{LHS} =& i \frac{d}{dx} \left[  \begin{pmatrix} e^{-i\eta(x) x} & 0 \\  0 & e^{i\eta(x) x} \end{pmatrix}  \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} \right] \\
      =& i \begin{pmatrix}  - i \eta(x) e^{-i \eta(x) x} - i x \frac{d\eta(x)}{dx} e^{-i \eta(x) x}  & 0 \\  0 & i\eta(x) e^{i\eta(x) x} + i x \frac{d\eta(x)}{dx} e^{i\eta(x)x}  \end{pmatrix}  \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix}  \\
      & +  i \begin{pmatrix} e^{-i\eta(x) x} & 0 \\  0 & e^{i\eta(x) x}  \end{pmatrix} \frac{d}{dx} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix}

   Multiplying on both sides of the equation the Hermitian conjugate of the transformation matrix

   .. math::
      \begin{pmatrix} e^{i\eta(x)x} & 0 \\ 0 & e^{-i \eta(x)x} \end{pmatrix},

   the two sides becomes

   .. math::
      \begin{pmatrix} e^{i\eta(x)x} & 0 \\ 0 & e^{-i \eta(x)x} \end{pmatrix}\mathrm{LHS} & = i \begin{pmatrix} - i\eta{x} - i x \frac{d\eta(x)}{dx} &  0 \\ 0 & i \eta(x) + i x \frac{d\eta(x)}{dx} \end{pmatrix}  \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} + i \frac{d}{dx} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix}  \\
      \begin{pmatrix} e^{i\eta(x)x} & 0 \\ 0 & e^{-i \eta(x)x} \end{pmatrix} \mathrm{RHS} & = \left( - \frac{\omega}{2} \sigma_3 + \frac{\lambda(x)}{2} \cos 2\theta_v \sigma_3 + \frac{\lambda(x)}{2} \sin 2\theta_v \begin{pmatrix} 0 & e^{2i\eta(x)x} \\ e^{-2i\eta(x)x} & 0 \end{pmatrix}  \right)  \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} .

   We choose the condition that

   .. math::
      \eta(x) + x \frac{d\eta(x)}{dx} = \frac{\lambda(x)}{2} \cos 2\theta_v,

   which removes the second term in the Hamiltonian in vacuum basis. Finally we have the equation of motion in this new basis

   .. math::
      i \frac{d}{dx} \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix} = \left( - \frac{\omega}{2} \sigma_3 + \frac{\lambda(x)}{2} \sin 2\theta_v \begin{pmatrix} 0 & e^{2i\eta(x)x} \\ e^{-2i\eta(x)x} & 0 \end{pmatrix} \right) \begin{pmatrix} \psi_{b1} \\ \psi_{b2} \end{pmatrix}.


   We could even remove all the :math:`\sigma_3` terms using this method by choosing

   .. math::
      \eta(x) + x \frac{d\eta(x)}{dx} = -\frac{\omega}{2} + \frac{\lambda(x)}{2} \cos 2\theta_v.



The general solution of :math:`\eta(x)` is

.. math::
   \eta(x) = \frac{Constant}{x} + \frac{1}{x} \int_1^x \frac{\cos 2\theta_v}{2} \lambda(\tau) d\tau,

where the constant can always be set to 0, which tells us that

.. math::
   \eta(x) = \frac{1}{x} \int_1^x \frac{\cos 2\theta_v}{2} \lambda(\tau) d\tau .


.. admonition:: Constant Matter Density
   :class: note

   As a check, for constant :math:`\lambda`, we have

   .. math::
      \eta(x) = \frac{\cos 2\theta_v }{2x} \lambda ( x-1 ).


In this new basis, the Hamiltonian becomes

.. math::
   H_b &= - \frac{\omega}{2} \sigma_3 + \frac{\lambda}{2} \sin 2\theta_v \begin{pmatrix} 0 & e^{i 2\eta(x) x} \\ e^{ - i 2\eta(x) x} & 0  \end{pmatrix} \\
   & =  - \frac{\omega}{2} \sigma_3 + \frac{\lambda}{2}\sin 2\theta_v \cos ( 2\eta(x) x )\sigma_1 - \frac{\lambda}{2} \sin 2\theta_v \sin (2\eta(x) x) \sigma_2.




Constant Matter Eigen Basis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For a Hamiltonian with matter interection,

.. math::
   H_v = -\frac{\omega}{2} \sigma_3 + \frac{\lambda}{2}\cos 2\theta_v \sigma_3 + \frac{\lambda}{2} \sin 2\theta_v \sigma_1,

where :math:`\lambda(x) = \lambda_0 + \lambda_1(x)`. We rotate it into constant matter basis where the Hamiltonian is diagonalized with only :math:`\lambda_0`,

.. math::
   H_m = R_{v2m} H_v R_{v2m}^\dagger,

where :math:`U` rotates the state from vacuum basis to constant matter basis.

In general the Hamiltonian after the rotation is written in a form

.. math::
   H_m = H_0 + R_{f2m}^\dagger \lambda_{1,f}(x) R_{f2m},

in which :math:`R_{f2m}` is the rotation from flavor basis to constant matter basis and :math:`\lambda_{1,f}` is the perturbation of matter profile in flavor basis. We also have

.. math::
   H_0 = \begin{pmatrix} \omega_{m1} & 0 \\ 0 & \omega_{m2} \end{pmatrix}

and

.. math::
   \lambda_{1,f}(x) = \begin{pmatrix} \delta\lambda & 0 \\ 0 & 0  \end{pmatrix}.


.. admonition:: Another Form of Matter Potential
   :class: hint

   For the perturbation we could also make it traceless without changing the probabilities.





.. admonition:: Position Dependent Rotation
   :class: hint

   If the rotation is position dependent, i.e., the matter profile :math:`\lambda_0` is not position independent, we have, in general,

   .. math::
      H_m = H_0 - i R_{f2m}^\dagger \frac{d}{dx} R_{f2m} + R_{f2m}^\dagger \lambda_1(x) R_{f2m}.

   In the case of discussion here, :math:`\frac{d}{dx} R_{f2m}=0`.







Refs & Notes
----------------------
