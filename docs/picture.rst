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









Isospin
------------

Neutrino isospin, which is the weak isospin, is :math:`1/2`.


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
