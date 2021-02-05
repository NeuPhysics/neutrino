MSW Effect Revisted
======================================



.. admonition:: Pauli Matrices and Rotations
   :class: note

   Given a rotation

   .. math::
      U = \begin{pmatrix} \cos \theta & \sin \theta \\ -\sin\theta & \cos \theta \end{pmatrix},

   its effect on Pauli matrices are

   .. math::
      U^\dagger \sigma_3 U  &=\cos 2\theta \sigma_3 + \sin 2\theta \sigma_1 \\
      U^\dagger \sigma_1 U & = -\sin 2\theta \sigma_3 + \cos 2\theta \sigma_1.


Flavor Basis
-------------------------


.. admonition:: Vacuum Oscillations
   :class: note

   Vacuum oscillations is already a Rabi oscillation at resonance with oscillation width :math:`\omega_v \sin 2\theta_v`.

Neutrino oscillation in matter has a Hamiltonian in flavor basis

.. math::
   H^{(f)} = \left(- \frac{1}{2} \omega_v \cos 2\theta_v +\frac{1}{2}\lambda(x)  \right)\sigma_3 + \frac{1}{2} \omega_v \sin 2\theta_v \sigma_1.



The Schroding equation is

.. math::
   i \partial_x \Psi^{(f)} = H^{(f)} \Psi^{(f)}.


To make connections to Rabi oscillations, we would like to remove the changing :math:`\sigma_3` terms, using a transformation

.. math::
   T = \begin{pmatrix} e^{-i \eta (x)} & 0 \\  0 & e^{i \eta (x)}  \end{pmatrix},

which transform the flavor basis to another basis

.. math::
   \begin{pmatrix} \psi_e \\ \psi_x \end{pmatrix} = \begin{pmatrix} e^{-i \eta (x)} & 0 \\  0 & e^{i \eta (x)}  \end{pmatrix} \begin{pmatrix} \psi_{a} \\ \psi_{b} \end{pmatrix}.


The Schrodinger equation can be written into this new basis

.. math::
   i \partial_x (T \Psi^{(r)}) = H^{(f)} T\Psi^{(r)},

which is simplified to

.. math::
   i \partial_x \Psi^{(r)} = H^{(r)} \Psi^{(r)},

where

.. math::
   H^{(r)} = - \frac{1}{2}\omega_v \cos 2\theta_v \sigma_3 + \frac{1}{2} \omega_v \sin 2\theta_v \begin{pmatrix}
   0 & e^{2i\eta(x)} \\
   e^{-2i\eta(x)} & 0 \\
   \end{pmatrix},

in which we remove the varying component of :math:`\sigma_3` elements using

.. math::
   \frac{d}{dx}\eta(x) = \frac{\lambda(x)}{2}.


The final Hamiltonian would have some form

.. math::
   H^{(r)} = - \frac{1}{2}\omega_v \cos 2\theta_v \sigma_3 + \frac{1}{2} \omega_v \sin 2\theta_v \begin{pmatrix}
   0 & e^{i\int_0^x \lambda(\tau)d\tau + 2i\eta(0)} \\
   e^{-i\int_0^x \lambda(\tau)d\tau - 2i\eta(0)} & 0 \\
   \end{pmatrix},

where :math:`\eta(0)` is chosen to conter the constant terms from the integral.

For arbitary matter profile, we could first apply Fourier expand the profile into trig function then use Jacobi-Anger expansion so that the system becomes a lot of Rabi oscillations.

Any transformations or expansions that decompose :math:`\exp{\left(i\int_0^x \lambda(\tau)d\tau\right)}` into many summations of :math:`\exp{\left( i a x + b \right)}` would be enough for an Rabi oscillation interpretation.


Let's discuss the constant matter profile, :math:`\lambda(x) = \lambda_0`. Thus we have

.. math::
   \eta(x) = \frac{1}{2} \lambda_0 x.

The Hamiltonian becomes

.. math::
   H^{(r)} = - \frac{1}{2}\omega_v \cos 2\theta_v \sigma_3 + \frac{1}{2} \omega_v \sin 2\theta_v \begin{pmatrix}
   0 & e^{i\lambda_0 x} \\
   e^{-i\lambda_0 x} & 0 \\
   \end{pmatrix},

which is exactly a Rabi oscillation. The resonance condition is

.. math::
   \lambda_0 = \omega_v \cos 2\theta_v.




Instanteneous Matter Basis
------------------------------------------------

Neutrino oscillation in matter has a Hamiltonian in flavor basis

.. math::
   H^{(f)} = \left(- \frac{1}{2} \omega_v \cos 2\theta_v +\frac{1}{2}\lambda(x)  \right)\sigma_3 + \frac{1}{2} \omega_v \sin 2\theta_v \sigma_1.



The Schroding equation is

.. math::
   i \partial_x \Psi^{(f)} = H^{(f)} \Psi^{(f)},


which can be transformed to instantaneous matter basis by applying a rotation :math:`U`,

.. math::
   i \partial_x \left(  U\Psi^{(m)} \right)= H^{(f)} U\Psi^{(m)},


where

.. math::
   U = \begin{pmatrix} \cos \theta_m & \sin \theta_m \\ -\sin\theta_m & \cos \theta_m \end{pmatrix}.

With a little algebra, we can write the system into

.. math::
   i \partial _x \Psi^{(m)} = H^{(m)}\Psi^{(m)}


.. math::
   H^{(m)} = U^\dagger H^{(f)} U - i U^\dagger \partial_x U.


By setting the off-diagonal elements of the first term :math:`U^\dagger H^{(f)} U` to zero, we can derive the relation

.. math::
   \tan 2\theta_m = \frac{\sin 2\theta_v}{\cos 2\theta_v - \lambda/\omega_v}.

Furthermore, we derive the term

.. math::
   i U^\dagger \partial_x U = - \dot\theta_m \sigma_2.


We can calculate :math:`\dot\theta_m` by taking the derivative of :math:`\tan 2\theta_m`,

.. math::
   \frac{d}{dx} \tan 2\theta_m = \frac{2}{\cos^2 2\theta_m} \dot\theta_m,

so that

.. math::
   \dot\theta_m &= \frac{1}{2} \cos^2 (2\theta_m) \frac{d}{dx} \tan 2\theta_m \\
   & = \frac{1}{2} \frac{(\cos 2\theta_v - \lambda/\omega_v)^2}{ (\lambda/\omega_v)^2 + 1 - 2\lambda \cos 2\theta_v /\omega_v } \frac{d}{dx} \frac{\sin 2\theta_v}{\cos 2\theta_v - \lambda/\omega_v} \\
   & = \frac{1}{2} \frac{(\cos 2\theta_v - \lambda/\omega_v)^2}{ (\lambda/\omega_v)^2 + 1 - 2\lambda \cos 2\theta_v /\omega_v }  \frac{\sin 2\theta_v}{(\cos 2\theta_v - \lambda/\omega_v)^2} \frac{1}{\omega)v} \frac{d}{dx} \lambda(x) \\
   & = \frac{1}{2} \sin 2\theta_m \frac{1}{\omega_m} \frac{d}{dx} \lambda(x).
