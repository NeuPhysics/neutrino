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



Bipolar Model
--------------------



Isospin
~~~~~~~~~~



Neutrino isospin is :math:`1/2`.


A Spin in A Magnetic Field
~~~~~~~~~~~~~~~~~~~~~~












.
