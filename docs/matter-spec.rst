Matter as Driven Energy
====================================

.. index:: Rabi Oscillation

.. admonition:: Rabi Oscillation
   :class: note

   Rabi oscillations happens when a driven field is applied to a quantum system. A simple case would be a driven field :math:`-A\cos(\omega t)` is applied to a system with Hamiltonian

   .. math::
      H_0 = \begin{pmatrix} \epsilon_1 & 0 \\ 0 & \epsilon_2 \end{pmatrix}.

   The overall Hamiltonian becomes

   .. math::
      H = -\frac{\omega_0}{2} \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} - A \cos(\omega t)\begin{pmatrix} 0 & 1 \\ 1 & 0  \end{pmatrix} .

   Using Pauli matrices, this can be simplified,

   .. math::
      H = -\frac{\omega_0}{2}\sigma_z - A\cos(\omega t)\sigma_x .

   An ansatz about the state is that we can always write down the solutions to this system as

   .. math::
      \ket{\psi} = c_g(t) e^{-iE_g t}\ket{g} + c_e(t) e^{-i E_e t} \ket{e}.

   We also know that in :math:`\{\ket{g},\ket{e}\}` basis, we have :math:`\sigma_z \ket{g}=\ket{g}` and :math:`\sigma_z\ket{e}=-\ket{e}`. Thus the Schroding equation is reduced to

   .. math::
      i\partial_t( c_g e^{-iE_gt}\ket{g}+c_e e^{-iE_et}\ket{e} )=(-\frac{\omega}{2}\sigma_z - A\cos(\omega t) \sigma_z)( c_g e^{-iE_gt}\ket{g}+c_e e^{-iE_et}\ket{e} ).

   Simplify the equation and write down the equations for both :math:`\ket{g}` and :math:`\ket{e}`, I have

   .. math::
      \dot c_g &= i A\cos(\omega t) c_e e^{i(E_g-E_e) t}, \\
      \dot c_e & = i A\cos(\omega t) c_g e^{-i(E_g-E_e)t}.

   Notice that we can write :math:`\cos(\omega t)` as :math:`\frac{1}{2}(e^{-i\omega t} + e^{i\omega t})`. The equations becomes

   .. math::
      \dot c_g &= \frac{iA}{2}c_e ( e^{i(omega-\omega_0)t} + e^{-i(\omega+\omega_0)t} ), \\
      \dot c_e & = \frac{iA}{2} c_g ( e^{i(\omega+\omega_0)t} + e^{i( \omega_0 - \omega )t} ).

   where I used :math:`\omega_0 = E_e - E_g`. I assume this is larger than 0.

   **The rotation wave approximation is that since the term with angular frequency** :math:`\omega+\omega_0` **is much larger than** :math:`\omega_0-\omega`. I would drop it and only capture the overall behavior.

   The equation we have is

   .. math::
      \dot c_g & = \frac{iA}{2} c_e e^{-i(\omega_0-\omega)}, \\
      \dot c_e & = \frac{iA}{2} c_g e^{i(\omega_0 - \omega)}.

   So the problem becomes solvable.

   .. math::
      \ddot c_e - i(\omega - \omega) \dot c_e + \frac{A^2}{4}c_e = 0.

   The solution to this is simply determined by solving out the characteristic equation, which is

   .. math::
      \lambda_{\pm} = \frac{(\omega_0 - \omega) \pm \sqrt{ (\omega_0 - \omega)^2 + A^2 } }{2} .

   The general solution to :math:`c_e` is

   .. math::
      c_e = c_+ e^{i\lambda_+ t} + c_- e^{i\lambda_- t}.

   Suppose we have initial condition that

   .. math::
      c_g(0) & = 1,\\
      c_e(0) & = 0,

   the solutions should be

   .. math::
      c_e(t) & = \frac{iA}{\Omega_R} e^{i\Delta t/2} \sin(\Omega_R t/2) ,\\
      c_g(t) &=  e^{-i\Delta t/2}(\cos(\Omega_R t/2) + \frac{i\Delta}{\Omega_R} \sin(\Omega_R t/2) ),

   where we defined :math:`\Delta = \omega_0-\omega` and the Rabi frequency :math:`\Omega_R^2` is defined as :math:`\Omega_R^2 = \Delta^2 + A^2`.

   The probability for the system to stay on a state :math:`\ket{e}` is

   .. math::
      P = \frac{A^2}{\Omega_R^2} \sin^2\left( \frac{\Omega_R }{2} t \right).




In vacuum energy eigenbasis, we can write down the Hamiltonian for neutrino oscillations in matter,

.. math::
   H =  -\frac{\omega}{2} \sigma_1 + U^{-1} V U,

where the transformation matrix was calculated in the previous chapter. The expression for this Hamiltonian, as we plug in the transformation, is

.. math::
   H = -\frac{\omega}{2} \sigma_3 + \frac{\lambda}{2}\cos(2\theta_v) \sigma_3 + \frac{\lambda}{2}\sin(2\theta) \sigma_1 .


.. admonition:: Comparing with The Simple Case of Rabi Oscillation
   :class: note

   The extra term compared with the Rabi oscillation we worked out is

   .. math::
      \frac{\lambda}{2}\cos(2\theta_v) \sigma_3,

   which is also the troble since here :math:`\lambda` is time dependent.


.. admonition:: Hamiltonian Vector
   :class: note

   This Hamiltonian forms a vector

   .. math::
      \vec H = \begin{pmatrix}  0 & \frac{\lambda}{2}\sin(2\theta_v) & 0 & -\frac{\omega}{2} + \frac{\lambda}{2} \cos(2\theta_v)  \end{pmatrix},

   in the complate basis

   .. math::
      \vec \sigma = \begin{pmatrix}  I & \sigma_1 & \sigma_2 & \sigma_3  \end{pmatrix}.

   So that

   .. math::
      H = \vec H \cdot \vec \sigma.


To solve the problem, we use the ansatz that

.. math::
   \ket{\psi} = C_1 e^{i\frac{\omega}{2}t} \ket{1} + C_2 e^{-i\frac{\omega}{2}t} \ket{2}.

In the proper basis, we also have

.. math::
   \sigma_3 \ket{1} &= \ket{1}, \\
   \sigma_3 \ket{2} & = -\ket{2},\\
   \sigma_1 \ket{1} & = \ket{2},\\
   \sigma_1\ket{2} & = \ket{1}.

Plug in these into Schrodinger equation,

.. math::
   &( i\dot C_1 e^{i\omega t/2} \ket{1} - \frac{\omega}{2} C_1 e^{i\omega t/2} \ket{1} + i\dot C_2 e^{-i\omega t/2} \ket{2} + \frac{\omega}{2} C_2 e^{-i\omega t/2} \ket{1} ) \\
   &= \left( \frac{\lambda}{2} \cos 2\theta_v - \frac{\omega}{2} \right) C_1 e^{i\omega t/2} \ket{1} - \left( \frac{\lambda}{2}\cos 2\theta_v -\frac{\omega}{2}  \right) C_2 e^{-\omega t/2} \ket{2} + \frac{\lambda}{2} \sin 2\theta_v C_1 e^{i\omega t/2}\ket{2} + \frac{\lambda}{2} \sin 2\theta_v C_2 e^{-i\omega t/2} \ket{1}.

Collect terms we get two equations,

.. math::
   i \dot C_1 & = \frac{\lambda \cos 2\theta_v}{2} C_1 + \frac{\lambda \sin 2\theta_v}{2} C_2 e^{-i\omega t}, \\
   i \dot C_2 & = \frac{\lambda \cos 2\theta_v}{2} C_2 + \frac{\lambda \sin 2\theta_v}{2} C_1 e^{i\omega t}.


Write down the expression for :math:`C_1` from the second equation and the expression for :math:`C_2` from the first equation,

.. math::
   C_1 &= \frac{ i \dot C_2 - \frac{\lambda \cos 2\theta_v }{2}C_2 }{\frac{\lambda \cos 2\theta_v}{2} e^{i\omega t}}, \\
   C_2 & = \frac{ i \dot C_1 - \frac{\lambda \cos 2\theta_v }{2}C_1  }{ \frac{\lambda \sin 2\theta_v}{2} e^{-i\omega t} }.


Combine the two equations we get the equation for :math:`\dot C_1` which is used to get the equation for :math:`C_2`. Simplification can be done and it leads to

.. math::
   \ddot C_2 + \left( i \lambda \cos 2\theta - \left( \frac{\dot \lambda}{\lambda} + i\omega \right)  \right) \dot C_2 - \left( \frac{i\lambda \cos 2\theta_v}{ 2} \left( \frac{\dot\lambda}{\lambda} + i\omega \right) + \frac{\lambda^2}{4} \cos 4\theta_v  \right) C_2 = 0.















Refs & Notes
-----------------
