Parametric Resonance
=================================================

.. index:: Parametric Resonance

Parametric Resonance
--------------------------------------

Parametric resonance is the enhenced oscillation due to matter profile fluctions. The resonance is triggered by the synchronization between the averaged eigen oscillations and the oscillations of the fluctuations in matter profile. In other words, [krastev1989]_

.. math::
   \int_0^{2\pi/k} \omega_m(x) d x = 2\pi n, n = 1,2,3,\cdots

where :math:`2\pi/k` is the periodic length of matter perturbation.


Given matter profile :math:`\lambda(x) = \lambda_0 (1 + A \sin(k x))`, we could solve the condition assuming the matter perturbation wavelength is much smaller than the oscillation length in matter. The result is

.. math::
   \omega_m = n k,

where we choose :math:`\omega_m` to be the averaged value along the matter fluctuation period.



Picture
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

















.. [krastev1989] Krastev, P. I., & Smirnov, A. Y. (1989). Parametric effects in neutrino oscillations. Physics Letters B, 226(3-4), 341–346. http://doi.org/10.1016/0370-2693(89)91206-9








Castle Wall Potential
----------------------------------------------



Evolution Operator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For constant matter density, the state after a propagation of distance :math:`X` is given by the evolution operator,

.. math::
   \Psi^{f}(x_0+X) = \mathscr{U}^{m} (X) \Psi^f(x_0),

where :math:`\mathscr{U}^{m}` is the evolution operator in flavor basis, which is obtained directly using

.. math::
   \mathscr{U}^m (x) = \exp\left(  -i H^f x \right),

or from a rotation of evolution operator in matter basis.

The Hamiltonian in flavor basis is simply written in terms of Pauli matrices,

.. math::
   H^f = \frac{\omega}{2} \left( \sin 2\theta \sigma_1 + (\hat\lambda - \cos 2\theta) \sigma_3 \right),

which, fortunately, can be simplified to a vector product of the Pauli matrices vector and another vector. To find out the other vector, we define

.. math::
   \vec \sigma = \left( \sigma_1, \sigma_2,\sigma_3 \right).

Then we require

.. math::
   H^f \equiv \frac{\omega_m}{2} \vec n\cdot \vec \sigma .

Compare this expression with the previous result for :math:`H^f`, we solve

.. math::
   \vec n = \frac{\omega}{\omega_m } \left( \sin 2\theta ,  0 , \hat\lambda  - \cos 2\theta  \right),

where :math:`\vec n` is indeed a unit vector.

Using this new simplified expression for Hamiltonian, we have

.. math::
   \mathscr{U}^m (x) &= \exp\left( -i H^f x \right) \\
   & = \exp \left( - i \frac{\omega_m}{2} x \vec n\cdot \vec \sigma \right).


.. admonition:: Euler's Formula for Pauli Matrices
   :class: note

   .. math::
      e^{i \phi \vec n \cdot \vec \sigma} = I \cos \phi + i \vec n \cdot \vec \sigma \sin \phi.

   To prove it, Taylor expansion of the exponential and anticommutation relations are needed.


Using Euler's formula, we obtain the expanded form of the evolution operator,

.. math::
   \mathscr{U}^m (x) = I \cos \left( \frac{\omega_m}{2} x \right) - i \vec n \cdot \vec \sigma \sin \left( \frac{\omega_m}{2} x \right),

where we can define a phase function for simplicity, :math:`\phi(x) =  \frac{\omega_m}{2} x `. The evolution becomes

.. math::
   \mathscr{U}^m (x) = I \cos \phi(x) - i \vec n \cdot \vec \sigma \sin \phi(x).


Two Slabs
~~~~~~~~~~~~~~~~~~~~~~~~~~


For two slabs with different matter potential right next to each other, the evolution operator for the two slabs is simply the multiplication of the two evolution operator for each slab,

.. math::
   \mathscr{U}^f (X_1+X_2) = \mathscr{U}^f(X_2)\mathscr{U}^f(X_1),

where :math:`X_1` and :math:`X_2` are the thickness of the slabs.

Apply the formalism of Pauli matrices, we have

.. math::
   \mathscr{U}^f (X_1+X_2) &= \left( I \cos \phi(X_2) - i \vec n_2 \cdot \vec \sigma \sin \phi(X_2) \right)  \left( I \cos \phi(X_1) - i \vec n_1 \cdot \vec \sigma \sin \phi(X_1) \right) \\
   & = \cos \phi(X_2)\cos \phi(X_1) - i\vec n _1 \cdot \vec \sigma \cos\phi(X_2) \sin \phi(X_1) - i \vec n_2 \cdot \vec \sigma \sin \phi(X_2) \cos \phi(X_1) - (\vec n_2 \cdot \vec \sigma)(\vec n_1 \cdot \vec \sigma) \sin \phi (X_2) \sin \phi(X_1).

Notice that

.. math::
   &(\vec n_2 \cdot \vec \sigma)(\vec n_1 \cdot \vec \sigma)  \\
   =& \frac{\omega}{\omega_{m1}}\frac{\omega}{\omega_{m2}}( \sin 2\theta \sigma_1 + ( \hat\lambda_{m2} - \cos 2\theta ) \sigma_3 )( \sin 2\theta \sigma_1 + (\hat\lambda_{m1} -\cos 2\theta ) \sigma_3 ) \\
   =& \frac{\omega}{\omega_{m1}}\frac{\omega}{\omega_{m2}} ( \sin 2\theta \sin 2\theta + \cos 2\theta \cos 2\theta + \hat \lambda_{m1}\hat\lambda_{m2} - \hat\lambda_{m1} \cos 2\theta - \hat\lambda_{m2}\cos 2\theta - \sin 2\theta \sigma_1 (\hat\lambda_{m1}- \cos 2\theta) \sigma_3  -  (\hat\lambda_{m2}- \cos 2\theta) \sigma_3 \sin 2\theta \sigma_1 ) \\
   =& \vec n_1 \cdot \vec n_2 + i \vec n_1 \times \vec n_2 \sigma_2.

Thus the result for the evolution operator is

.. math::
   \mathscr{U}^f (X_1+X_2) & = \cos \phi(X_2)\cos \phi(X_1) - i\vec n _1 \cdot \vec \sigma \cos\phi(X_2) \sin \phi(X_1) - i \vec n_2 \cdot \vec \sigma \sin \phi(X_2) \cos \phi(X_1) - (\vec n_1 \cdot \vec n_2 + \vec n_1 \times \vec n_2) \sin \phi (X_2) \sin \phi(X_1) \\
   & = \cos \phi(X_1) \cos \phi(X_2) - \sin \phi(X_1)\sin \phi(X_2) \vec n_1\cdot \vec n_2  - i \vec \sigma\cdot ( \sin \phi(X_1) \cos \phi(X_2) \vec n_1 + \cos \phi(X_1) \sin \phi(X_2) \vec n_2 -  \sin \phi (X_1) \sin \phi(X_2) \vec n_1 \times \vec n_2 )\\
   & \equiv R - i \vec \sigma \cdot \vec I,

where

.. math::
   R &= \cos \phi(X_1) \cos \phi(X_2) - \sin \phi(X_1)\sin \phi(X_2) \vec n_1\cdot \vec n_2 \\
   \vec I & = \sin \phi(X_1) \cos \phi(X_2) \vec n_1 + \cos \phi(X_1) \sin \phi(X_2) \vec n_2 -  \sin \phi (X_1) \sin \phi(X_2) \vec n_1 \times \vec n_2.

To carry out the calculation of multiple periods of such, it is easier to rewrite the evolution operator into exponential form. To do so we need to define

.. math::
   R & = \cos \Phi ,\\
   \vec N & = \frac{\vec I}{\lvert \vec I \rvert},\\
   \lvert \vec I \rvert & = \sin \Phi.

Using these representations, we can easily apply Euler's formula backwards,

.. math::
   \mathscr{U}^f(X_1+X_2) = \exp \left( -i (\vec N \cdot  \vec \sigma) \Phi \right).

For a lot of such potentials right next to each other, we have

.. math::
   \mathscr{U}^f(k(X_1+X_2)) = \exp \left( -i k (\vec N \cdot  \vec \sigma) \Phi \right).

This is verified in Giunti's book.


Then we can calculate the transition probability, which is given in Giunti's book,

.. math::
   P_{\nu_e\to\nu_\mu} (k(X_1+X_2) ) = \left( 1 - \frac{I_3^2}{\lvert \vec I \rvert^2}  \right) \sin^2 k\Phi ,

which gives us the resonance condition :math:`I_3=0`, i.e.,

.. math::
   \frac{\tan \phi(X_1)}{\tan \phi(X_2)} = -\frac{\cos 2\theta_{m2}}{\cos 2\theta_{m1}},

with :math:`\phi(X_i)=\frac{\omega_{mi}}{2}X_i`.



























Refs and Notes
---------------------

I did some calculations based on Giunti's book so that I can really understand each step of the derivations.

1. Giunti, C., & Kim, C. W. (2007). Fundamentals of Neutrino Physics and Astrophysics. Oxford University Press. doi:10.1093/acprof:oso/9780198508717.001.0001
2. Krastev, P. I., & Smirnov, A. Y. (1989). Parametric effects in neutrino oscillations. Physics Letters B, 226(3-4), 341–346. http://doi.org/10.1016/0370-2693(89)91206-9
3. Loreti, F. N., & Balantekin, A. B. (1994). Neutrino oscillations in noisy media. Physical Review D, 50(8), 4762–4770. http://doi.org/10.1103/PhysRevD.50.4762
