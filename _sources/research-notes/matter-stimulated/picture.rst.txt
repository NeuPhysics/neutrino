Physics Picture
==================


Rabi oscillations
---------------------

Hamiltonian of Rabi oscillation is

.. math::
   H = -\frac{\omega_m}{2} \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} - A \cos(k t)\begin{pmatrix} 0 & 1 \\ 1 & 0  \end{pmatrix} .


The Hamiltonian we could solve is

.. math::
   H &= -\frac{\omega_m}{2} \sigma_3 - \frac{A}{2} \begin{pmatrix}0 & e^{i k x} \\ e^{-i k x} & 0 \end{pmatrix} \\
   & =  -\frac{\omega_m}{2} \sigma_3 - \frac{A}{2} \cos(kx) \sigma_1 + \frac{A}{2} \sin (kx) \sigma_2 ,

which has a transition probability

.. math::
   P(x) = \frac{\lvert A\rvert^2}{ \lvert A\rvert^2 + (k - \omega_m)^2 }  \sin^2 \left( \sqrt{ \lvert A\rvert^2 + (k - \omega_m)^2 } x/2 \right).



With two perturbations

.. math::
   H' = -\frac{\omega_m}{2} \sigma_3  - \frac{1}{2} (A_1 \cos(k_1 x) + A_2 \cos(k_2 x)) \sigma_1 + \frac{1}{2}( A_1 \sin (k_1x) + A_2 \sin (k_2 x) ) \sigma_2.

If :math:`k_1 \gg k_2`, we can approximate by treating the slow rotating perturbation as a constant added to the energy gap, so that the new energy gap is shifted

.. math::
   \omega_m' = \sqrt{ \omega_m^2 + A_2^2 },

which could possibly shift the system out of resonance.

The best practice would be applying this to the different modes.



Oscillations and Modes
-------------------------


Using Jacobi-Anger expansion, for any system with Hamiltonian

.. math::
   H = -\frac{\omega_m}{2} \sigma_3 + \frac{1}{2}\sum_n A_n \sin (k_n x) \cos 2\theta_m \sigma_3 - \frac{1}{2}\sum_n A_n \sin (k_n x) \sin 2\theta_m \sigma_1,

we could rewrite the system into a composition of multiple Rabi oscillations

.. math::
   H = -\frac{\omega_m}{2} \sigma_3 + \frac{1}{2} \sum_{n_1} \cdots \sum_{n_N} \begin{pmatrix} 0 & B_{n_1,\cdots,n_N} \Phi_{n_1,\cdots, n_N} e^{i \left( \sum_{a} n_a k_a   \right)x} \\ B_{n_1,\cdots,n_N}^* \Phi_{n_1,\cdots, n_N}^* e^{-i \left( \sum_{a} n_a k_a   \right)x} & 0 \end{pmatrix}.

For each mode, we have a Rabi oscillation

.. math::
   H_{n_1,\cdots,n_N} =  -\frac{\omega_m}{2} \sigma_3 + \frac{1}{2}
   \lvert B_{n_1,\cdots,n_N} \rvert \begin{pmatrix}
   0 & e^{i \left( \sum_{a} n_a k_a   \right)x} \\
   e^{-i \left( \sum_{a} n_a k_a   \right)x} &  0
   \end{pmatrix},

where we have dropped :math:`\Phi_{n_1,\cdots, n_N}` and the possible sign and phase of :math:`B_{n_1,\cdots,n_N}` since these phase terms only determines the phase of the perturbation on xy plane.




To explain the interference, we explore the superposition of two modes,

.. math::
   H \equiv -\frac{\omega_m}{2} \sigma_3 + \frac{1}{2}
   \lvert B_1 \rvert \begin{pmatrix}
   0 & e^{i \left( \sum_{a} n_a k_a   \right)x} \\
   e^{-i \left( \sum_{a} n_a k_a   \right)x} &  0
   \end{pmatrix} + \frac{1}{2}
   \lvert B_2 \rvert \begin{pmatrix}
   0 & e^{i \left( \sum_{a} n_a' k_a   \right)x} \\
   e^{-i \left( \sum_{a} n_a' k_a   \right)x} &  0
   \end{pmatrix},

which is composed of two Rabi oscillations. We choose the first mode to be the one close to resonance, i.e., :math:`\sum_a n_a k_a \sim \omega_m`, while the second mode is far away from resonance.

For simplicity we use two perturbations, that is :math:`a=1,2`. The Hamiltonian can be written as

.. math::
   H = -\frac{\omega_m}{2} \sigma_3 + \frac{1}{2} ( \lvert B_1\rvert \cos(\phi_1 x) + \lvert B_1 \rvert \cos (\phi_2 x) )\sigma_1 - \frac{1}{2} ( \lvert B_1 \rvert \sin (\phi_1 x) + \lvert B_2 \rvert \sin(\phi_2x) ) \sigma_2,


where we define :math:`\phi_1 = n_1 k_1 + n_2 k_2` and :math:`\phi_2 = n_1' k_1 + n_2' k_2`. Using Pauli matrices are basis, this corresponds to a Hamilton vector

.. math::
   \vec H = \begin{pmatrix}
   - \lvert B_1\rvert \cos(\phi_1 x) - \lvert B_2 \rvert \cos (\phi_2 x)  \\
   \lvert B_1 \rvert \sin (\phi_1 x) + \lvert B_2 \rvert \sin(\phi_2x) \\
   \omega_m
   \end{pmatrix} = \begin{pmatrix}
   0  \\
   0 \\
   \omega_m
   \end{pmatrix} + \begin{pmatrix}
   - \lvert B_1\rvert \cos(\phi_1 x)   \\
   \lvert B_1 \rvert \sin (\phi_1 x)  \\
   0
   \end{pmatrix} + \begin{pmatrix}
   - \lvert B_2 \rvert \cos (\phi_2 x)  \\
   \lvert B_2 \rvert \sin(\phi_2x) \\
   0
   \end{pmatrix},

which has a z component and two rotating perturbations. We choose the system to be

.. math::
   \phi_1 &\sim \omega_m \\
   \phi_2 & \neq \omega_m.

We then have two different situations, :math:`\phi_2/\omega_m \gg 1` and :math:`\phi_2/\omega_m \ll 1`.


Slow Perturbation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For :math:`\phi_2/\omega_m \ll 1`, the second mode is a very slow rotating perturbation, which can be explained using the proposed theory.



.. figure:: assets/picture/rabi-oscillation-interference-of-different-modes.png
   :align: center

   Resonance interference of modes. The combination of the first mode and :math:`B_2=`


.. figure:: assets/picture/rabi-oscillation-interference-of-different-modes-compare-rabi-formula.png
   :align: center

   Compare with Rabi formula



As a test of the theory, we can calculate the ratio of each :math:`B_2`, which depends on the modes, and the critical value :math:`B_2^C` which is the crtical value for the destruction of the resonance.

.. figure:: assets/picture/rabi-oscillation-interference-of-different-modes-b2-over-b2critical.png
   :align: center

   Ratio :math:`\lvert B_2\rvert/\lvert B_2^C \rvert`


To summarize, in the modes view, resonance of some modes are destroyed by some certain modes.



Example of Full System
----------------------------------------------------


First we choose a system that is on resonance

.. math::
   H_1 = -\frac{\omega_m}{2} \sigma_3 + \frac{\delta \lambda_1}{2} \cos 2\theta_m \sigma_3 - \frac{\delta \lambda_1}{2} \sin 2\theta_m \sigma_1,

where :math:`\delta\lambda_1 = A_1 \sin (k_1 x)`, where :math:`k_1 = \omega_m` and :math:`A_1 = 3.5\times 10^{-5}\omega_m`. This sets the system to resonance.

.. figure:: assets/picture/resonance-freq-example-1.png
   :align: center

   Resonance


.. admonition:: Does the Diagonal Term Matter?
   :class: note

   Removing the diagonal elements of the perturbation

   .. math::
      H_1' = -\frac{\omega_m}{2} \sigma_3  - \frac{\delta \lambda_1}{2} \sin 2\theta_m \sigma_1,

   will result in :numref:`resonance-freq-example-1-compare-with-diagonal-elements-of-perturbation-removed`.

   .. _resonance-freq-example-1-compare-with-diagonal-elements-of-perturbation-removed:

   .. figure:: assets/picture/resonance-freq-example-1-compare-with-diagonal-elements-of-perturbation-removed.png
      :align: center

      Remove the diagonal elements of the preturbation



.. admonition:: Adding in Slowly Changing Field
   :class: note

   Add a new slow perturbation

   .. math::
      \delta \lambda_2 = A_2 \sin (k_2 x),

   with

   .. math::
      A_2 &= 10^{-2},\\
      k_2 &= 0.1.


   .. figure:: assets/picture/resonance-freq-example-1-added-new-slow-perturbation.png
      :align: center

      Added new slow perturbation



.. admonition:: Removing Diagonal Elements of Slow Perturbation
   :class: note

   Removing the diagonal elements of slow perturbation

   .. math::
      H_2' = -\frac{\omega_m}{2} \sigma_3 + \frac{\delta \lambda_1 }{2} \cos 2\theta_m \sigma_3 - \frac{\delta \lambda_1 + \delta \lambda_2}{2} \sin 2\theta_m \sigma_1,


   gives us the result :numref:`resonance-freq-example-1-added-new-slow-perturbation-compare-with-removing-diagonal-elements`.

   .. _resonance-freq-example-1-added-new-slow-perturbation-compare-with-removing-diagonal-elements:

   .. figure:: assets/picture/resonance-freq-example-1-added-new-slow-perturbation-compare-with-removing-diagonal-elements.png
      :align: center

      Remove diagonal elements of slow perturbation.



Explaination
-------------------


Slow perturbation is slow and changes the energy gap of the system. Since the energy gap :math:`\omega_m` determines the resonance point, which is

.. math::
   k_1 = \omega_m,

adding the slow perturbation could increase :math:`\omega_m`,

.. math::
   \omega_m' &= \sqrt{A_{2,\bot} ^2 + \omega_m^2} \\
   & = \omega_m \sqrt{ \left(\frac{A_{2,\bot}}{\omega_m} \right)^2 + 1 } \\
   & \approx  \omega_m + \frac{A_{2,\bot}^2}{2\omega_m},
   :label: quadratic-approximation-energy-gap-shift


where :math:`A_{2,\bot}` is component perpendicular to z axis.



.. admonition:: Only Perpendicular Component
   :class: warning

   In the calculation of the modified energy gap, we used only the perpendicular component of the new slow perturbation. This only holds for :math:`A_{2,\bot}  \ll \omega_m`.

   **PROOF**


.. admonition:: Shift The System Out of Resonance
   :class: note

   Shift the system out of resonance, it is required that

   .. math::
      \lvert \omega_m' - k_1 \rvert \gtrsim \text{width of resonance} A_1.

   Width of resonance is basically determined by :math:`A_{1,\bot}`. Apply equation :eq:`quadratic-approximation-energy-gap-shift`, we can solve the condition to break the resonance,

   .. math::
      A_{2,\bot} \gtrsim \sqrt{2\omega_m A_{1,\bot}}.

   In our example, the condition becomes

   .. math::
      &A_2 \sin 2\theta_m \gtrsim \sqrt{2\omega_m A_1 \sin 2\theta_m} \\
      \Rightarrow & A_2  \gtrsim \sqrt{2\omega_m A_1 \tan 2\theta_m/\cos 2\theta_m}.


   .. figure:: assets/picture/resonance-freq-example-1-added-new-slow-perturbation-destruction.png
      :align: center

      With :math:`A_2=\sqrt{2 A_1 \sin (2 \theta_m)}/ \cos ^2(2 \theta_m) =0.0190304\omega_m`



   .. figure:: assets/picture/resonance-freq-example-1-added-new-slow-perturbation-destruction-compare.png
      :align: center

      Compare to show destruction


   Using Rabi formula the amplitudes are not matching the numerical calculations, :numref:`resonance-freq-example-1-added-new-slow-perturbation-destruction-compare-rotating-field`.


   .. _resonance-freq-example-1-added-new-slow-perturbation-destruction-compare-rotating-field:

   .. figure:: assets/picture/resonance-freq-example-1-added-new-slow-perturbation-destruction-compare-gridlines.png
      :align: center

      Grid lines are the amplitudes predicted by Rabi formula.

   As a reference, the Q values for each line are

   .. math::
      Q_1 & =  \frac{\lvert k_1 - \sqrt{A_2 \sin^2(2\theta_m)  + 1 }  }{A_1\sin (2\theta_m)} = 1.11689, \\
      Q_2 & = \frac{\lvert k_1 - \sqrt{A_2' \sin^2(2\theta_m)  + 1 }  }{A_1\sin (2\theta_m)} = 4.04469, \\
      Q_3 & = \frac{\lvert k_1 - \sqrt{A_2'' \sin^2(2\theta_m)  + 1 }  }{A_1\sin (2\theta_m)} = 402.277.





However, the important question is whether the modified oscillation really Rabi oscillation. The answer is NO.

.. figure:: assets/picture/really-rabi-question-mark.png
   :align: center

   Is the oscillation with slow perturbation really Rabi oscillation? Upper panel: Theoretical and numerical calculation of original system;
   Lower panel: Theoretical and numerical calculation with slow perturbation added.


We can not predict the oscillation when we add in the new perturbation using the Rabi oscillation formula. That makes sense!


Introducing Another Component Perturbation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We add in the term that has two components,

.. math::
   H = - \frac{\omega_m}{2} \sigma_3 + \frac{\delta \lambda(x)}{2} \cos 2\theta_m \sigma_3 - \frac{\delta \lambda(x)}{2} \sin 2\theta_m \sigma_1 + \frac{\delta \lambda(x)}{2} \sin 2\theta_m \sigma_2.



.. figure:: assets/picture/resonance-freq-example-1-added-new-slow-perturbation-destruction-compare-rotating-field.png
   :align: center

   Add another component xy plane


Rotating Perturbation with Constant Strength
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Construct a system with a mode at resonance and another rotating perturbation of constant length,

.. math::
   H = - \frac{\omega_m}{2} \sigma_3 - \frac{1}{2} (A_1\cos(k_1x) + A_2 \sin(k_2x))  \sigma_1 + \frac{1}{2} ( A_1\sin (k_1 x) + A_2 \sin(k_2 x) ) \sigma_2,

where we choose :math:`k_1\gg k_2`.

The new :math:`\sigma_2` term is a rotating field with constant length, which makes sure the modified energy gap has a constant length rather than the slowly changing energy gap.

.. figure:: assets/picture/rabi-oscillations-energy-gap-change.png
   :align: center

   Reduction of transition amplitudes. Black dashed line: one perturbation at exact resonance; Green long dashed line: :math:`A_2=A_{2,\mathrm{Critical}}=0.0083666`; Blue dotted line: :math:`A_2=0.01`; Red line: :math:`A_2=0.02`. The grid lines are the amplitude predicted using Rabi formula correspondingly.






Refs & Notes
-----------------

.. 1. Note to self: My advisor proposed and did the first calculations.
