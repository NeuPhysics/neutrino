Pictures
===============


There are several pictures to visualize the oscillations of neutrinos.


Coupled Pendulum
------------------------


.. figure:: assets/coupledPendulum.png


The equation of motion is

.. math::
   \begin{pmatrix}-\frac{d^2}{dt^2} - \left(\frac{g}{l}+\frac{k}{m}\right) & \frac{k}{m} \\ \frac{k}{m} & -\frac{d^2}{dt^2} - \left(\frac{g}{l}+\frac{k}{m}\right)\end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}

Using Fourier transform, we will get the solutions,

.. math::
   \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix}1 \\ 1 \end{pmatrix}A_1 \cos(\omega_1 t + \phi_1) + \begin{pmatrix}1 \\ -1\end{pmatrix} A_2 \cos (\omega_2 t + \phi_2)


Recall that the state of neutrino after time :math:`t` is

.. math::
   \ket{\psi(t)} = A_1 \ket{\nu_1} e^{-i E_1 t} + A_2 \ket{\nu_2} e^{- i E_2 t},

where :math:`A_1` and :math:`A_2` are determined by initial condition. The real part of this, is exactly the same as the solution to coupled pendulum, where the physics is the transfer from one eigenstate to another.



Gyroscope or Spinning Top Picture
---------------------------------------------


A Classical Top
~~~~~~~~~~~~~~~~~~


The key concept of a classical gyroscope is the balance between gravity and angular momentum conservation, i.e., angular conservation in specific directions.


Angular momentum for a 3D rigid body with a axial symmetry in a :math:`\dot {\vec I}=0` frame is

.. math::
   \vec S \to \begin{pmatrix} I_0 \omega_x \\ I_0 \omega_y \\ I\omega_z \end{pmatrix}

The gyroscope should obey Euler's equations with extra Coriolis terms since we have decided to work in a rotation frame (:math:`\dot{\vec I}=0`), [1]_

.. math::
   M_x &= I_0 (\ddot \theta - \dot \phi^2\sin\theta \cos\theta) + I \dot \phi \sin\theta (\dot\phi\cos\theta + \dot \psi) \\
   M_y & =  I_0 (\ddot \phi \sin\theta + 2 \dot \phi \dot\theta \cos\theta) - I \dot \theta (\dot \phi \cos\theta + \dot \psi) \\
   M_z & = I (\ddot \psi + \ddot \phi \cos\theta - \dot\phi \dot \theta \sin\theta)

with the torque for a top being

.. math::
   M_x & = m g z_G \sin\theta \\
   M_y & = 0 \\
   M_z & = 0 .

.. note::
   :math:`\dot \psi` is the spin of the top itself.


Steady Precession
```````````````````````````

A steady precession maintains the angle :math:`\theta`.

.. figure:: assets/gyroscopeSteadyPrecession.png
   :align: center


Now we have :math:`\dot \theta =0` so the Euler's equations reduces to,

.. math::
   \dot \phi  (I (\dot \phi \cos\theta +\dot \psi) - I_0\dot\phi \cos\theta) = M_x \equiv mg z_G


For a steady state usually we can use this approximation :math:`\dot \psi \gg \dot\phi`.

.. math::
   \dot\phi = \frac{m g z_G }{I\dot\psi} .

Now define :math:`\Omega  = \dot \phi` and :math:`\omega = \dot \psi`. Our approximation becomes :math:`\omega \gg \Omega`.



Unsteady Precession
`````````````````````````````````````

.. figure:: assets/spinningTop.png




Polarization Vector
-------------------------------

Polarization (for a two state system) is the difference of the probabilities of finding the system in the two difference normal states (spin up and spin down for example).


Density Matrix
~~~~~~~~~~~~~~~~~~~~

For a two-state system, an example of density matrix is

.. math::
   \hat \rho = W_1 \ket{\psi_a}\bra{\psi_a} + W_2 \ket{\psi_b}\bra{\psi_b}.

When :math:`\{ \ket{\psi_a}, \ket{\psi_b} \}` basis is chosen, density matrix can be written as a matrix,

.. math::
   \mathbf \rho = \begin{pmatrix} W_1 & 0 \\ 0 & W_2 \end{pmatrix},

in which the two constants are the probability to find the system in each states respectively and they are called the population.

Rewrite the density matrix with Pauli matrices and identity,

.. math::
   \mathbf \rho = \frac{1}{2} ( \mathbf I + \vec{\mathbf \sigma} \vec P ).


.. note::
   The reason we have a :math:`\frac{1}{2}` is that by definition polarization vector is

   .. math::
      \mathbf \rho &= a_0 \mathbf I + \mathbf {\sigma_x} a_x +  \mathbf {\sigma_y} a_y +  \mathbf {\sigma_z} a_z \\
      & = a_0 \mathbf I + \vec a \vec{\mathbf \sigma}.

   However, trace of density matrix should be 1, which means :math:`\mathrm{Tr} \mathbf \rho = a_0 2 =1` and we can find :math:`a_0=\frac{1}{2}` noting that :math:`\mathrm {Tr}\mathbf \sigma_i = 0`.


The important fact is that the values of polarization depends on the choice of basis.

More physical meanings can be obtained by chosing a good basis so that the density matrix is diagonalised by expressing it with components of polarization. [4]_



Polarization, as the name indicates, is defined as

.. math::
   P = W_1 - W_2

when it is aligned with on of the basis






Neutrino Flavour Isospin
---------------------------------

Neutrino flavour isospin [3]_

.. math::
   \mathbf s = \psi^{f\dagger} \frac{\mathbf\sigma}{2} \psi^f,

where

.. math::
   \psi^f_\nu & = \begin{pmatrix} a_{\nu_e} \\ a_{\nu_x} \end{pmatrix} \\
   \psi^f_{\bar \nu} & = \begin{pmatrix} - a_{\bar\nu_x} \\ a_{\bar\nu_e} \end{pmatrix}


The equation of motion for isospin is

.. math::
   \frac{d}{dt}\mathbf s = \mathbf s \times \mathbf {H^{eff}}.

Previously we have already seen the equations for a spinning top,

.. math::
   \frac{d}{dt}\vec S  =  \frac{\partial}{\partial t} \vec S  - \vec S \times \vec \Omega,

where :math:`\vec\Omega = \vec n \dot\phi`. Consider conservation of momentum, we have

.. math::
   \frac{\partial}{\partial t} \vec S  = \vec S \times \vec \Omega,

which is similar to the neutrino isospin equation of motion. :math:`\vec \Omega` corresponds to :math:`\mathbf {H^{eff}}`.








.. [1] Read Carl's lecture notes of *Classical Mechanics* for this derivation.
.. [2] Refer to `Top <http://ocw.mit.edu/courses/aeronautics-and-astronautics/16-07-dynamics-fall-2009/lecture-notes/MIT16_07F09_Lec30.pdf>`_ .
.. [3] `Collective neutrino flavor transformation in supernovae <http://journals.aps.org/prd/abstract/10.1103/PhysRevD.74.123004>`_
.. [4] Read quantum statistics book if more is needed.
