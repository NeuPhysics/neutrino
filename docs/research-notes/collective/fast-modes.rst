Fast Modes
====================


Why is it fast?
----------------------------


Fast modes require different opening angles for neutrinos and anti-neutrinos. The reason seems to be quite understandable. Forward scattering requires "colliding beams". In the early studies of neutrino self interactions, the models always have same opening angles for neutrinos and antineutrinos, which means that no colliding for neutrinos and antineutrinos on the same side of emission.

Different opening angles for all beams introduce collisions between all the beams, thus possibly leading to more conversions.

Here we use the four beams model. The linear stability analysis is simply four coupled harmonic oscillators.


.. admonition:: How could they be harmonic oscillators?
   :class: warning

   Here is the confusion. How could :math:`\epsilon` become very large if they are coupled harmonic oscillators? Is this related the fact that :math:`\epsilon` is complex instead of real?


We take out the terms related to the difference in opening angles :math:`\chi_-=1-\cos(\theta_1 - \theta_2)`. The linearized equation of motion becomes

.. math::
   i \partial_z \begin{pmatrix}
   \epsilon^L \\ \bar\epsilon^L \\ \epsilon^R \\ \bar\epsilon^R
   \end{pmatrix} =
   \begin{pmatrix}
   \frac{ -\mu\alpha \chi_- }{\sin\theta_1}  & \frac{ \mu\alpha\chi_- }{\sin\theta_1} & 0 & 0 \\
   \frac{ -\mu\chi_- }{\sin\theta_2} & \frac{ \mu\chi_- }{\sin\theta_2}  & 0 & 0 \\
   0 & 0 & \frac{ -\mu\alpha\chi_- }{\sin\theta_1}  & \frac{ \mu\alpha\chi_- }{\sin\theta_1} \\
   0 & 0 & \frac{ -\mu\chi_- }{\sin\theta_2} & \frac{ \mu\chi_- }{\sin\theta_2}
   \end{pmatrix}
   \begin{pmatrix}
   \epsilon^L \\ \bar\epsilon^L \\ \epsilon^R \\ \bar\epsilon^R
   \end{pmatrix}.

The matrix becomes block diagonalized. We assume a solution of the form :math:`\epsilon = \epsilon_0 e^{i\Omega}` which is substitued into the equation. The first two components obey the equation.

.. math::
   \begin{pmatrix}
   \mu M_{11} + \Omega & \mu M_{12} \\
   \mu M_{21} & \mu M_{22} + \Omega
   \end{pmatrix} \begin{pmatrix}
   \epsilon^L \\
   \bar \epsilon^L
   \end{pmatrix} =0.

The solutions of :math:`\Omega` has the form

.. math::
   \Omega =  \frac{ -(M_{11} + M_{22}) \pm \sqrt{\Delta} }{ 2 } \mu \propto \mu,

where the discrimination :math:`\Delta` is

.. math::
   \Delta = (M_{11} - M_{22})^2 + 4 M_{12} M_{21}.





Several Numerical Calculations
----------------------------------

.. admonition:: Four Beams Model
   :class: hint

   There are many things to consider for the four beams line model.

   1. Different emission angle for neutrinos and antineutrinos;
   2. Different density for neutrinos and antineutrinos;
   3. Left and right difference.

Is the system unstable even for :math:`\omega_v=0` and :math:`\lambda=0`?


.. figure:: assets/fast-mode-alpha-0.8.png
   :align: center

   The maximum imaginary part in linear stability analysis. These calculations are for fix :math:`k_m/\hat E=1`, where :math:`\hat E` is the energy scale used to scale all the quantities.

   .. math::
      \omega_v =& 0\\
      \lambda =& 0\\
      \alpha = & 0.8.

   The grid of figure are arranged according to the following values of :math:`\{\theta_1,\theta_2\}`.

   .. math::
      \begin{array}{cccc}
      \left\{\frac{\pi }{6},\frac{\pi }{6}\right\} & \left\{\frac{\pi }{6},\frac{2 \pi }{9}\right\} & \left\{\frac{\pi }{6},\frac{5 \pi }{18}\right\} & \left\{\frac{\pi }{6},\frac{\pi }{3}\right\} \\
      \left\{\frac{2 \pi }{9},\frac{\pi }{6}\right\} & \left\{\frac{2 \pi }{9},\frac{2 \pi }{9}\right\} & \left\{\frac{2 \pi }{9},\frac{5 \pi }{18}\right\} & \left\{\frac{2 \pi }{9},\frac{\pi }{3}\right\} \\
      \left\{\frac{5 \pi }{18},\frac{\pi }{6}\right\} & \left\{\frac{5 \pi }{18},\frac{2 \pi }{9}\right\} & \left\{\frac{5 \pi }{18},\frac{5 \pi }{18}\right\} & \left\{\frac{5 \pi }{18},\frac{\pi }{3}\right\} \\
      \left\{\frac{\pi }{3},\frac{\pi }{6}\right\} & \left\{\frac{\pi }{3},\frac{2 \pi }{9}\right\} & \left\{\frac{\pi }{3},\frac{5 \pi }{18}\right\} & \left\{\frac{\pi }{3},\frac{\pi }{3}\right\} \\
      \end{array}



.. figure:: assets/fast-mode-alpha-1.2.png
   :align: center

   The maximum imaginary part in linear stability analysis. These calculations are for fix :math:`k_m/\hat E=1`, where :math:`\hat E` is the energy scale used to scale all the quantities.

   .. math::
      \omega_v =& 0\\
      \lambda =& 0\\
      \alpha = & 1.2.

   The grid of figure are arranged according to the following values of :math:`\{\theta_1,\theta_2\}`.

   .. math::
      \begin{array}{cccc}
      \left\{\frac{\pi }{6},\frac{\pi }{6}\right\} & \left\{\frac{\pi }{6},\frac{2 \pi }{9}\right\} & \left\{\frac{\pi }{6},\frac{5 \pi }{18}\right\} & \left\{\frac{\pi }{6},\frac{\pi }{3}\right\} \\
      \left\{\frac{2 \pi }{9},\frac{\pi }{6}\right\} & \left\{\frac{2 \pi }{9},\frac{2 \pi }{9}\right\} & \left\{\frac{2 \pi }{9},\frac{5 \pi }{18}\right\} & \left\{\frac{2 \pi }{9},\frac{\pi }{3}\right\} \\
      \left\{\frac{5 \pi }{18},\frac{\pi }{6}\right\} & \left\{\frac{5 \pi }{18},\frac{2 \pi }{9}\right\} & \left\{\frac{5 \pi }{18},\frac{5 \pi }{18}\right\} & \left\{\frac{5 \pi }{18},\frac{\pi }{3}\right\} \\
      \left\{\frac{\pi }{3},\frac{\pi }{6}\right\} & \left\{\frac{\pi }{3},\frac{2 \pi }{9}\right\} & \left\{\frac{\pi }{3},\frac{5 \pi }{18}\right\} & \left\{\frac{\pi }{3},\frac{\pi }{3}\right\} \\
      \end{array}

When we have symmetric geometry, the instability region is gone. Such a result is exactly what we expect. However, different

.. figure:: assets/fast-modes-fast-mode-no-matter-asymmetric-alpha-0.8.png
   :align: center

   Linear stability analysis for

   .. math::
      \omega_v =& 0\\
      \lambda =& 0\\
      \alpha = & 0.8 \\
      \theta_L =& 2\pi/9 \\
      \theta_R =& \pi/6.



Regions of Instability
----------------------------------


For convinience, we define some quantities for four beam case.

1. We define the a parameter :math:`\alpha=(1-a)/(1+a)` so that :math:`\alpha \in [0,\infty]` is mapped onto :math:`a\in [-1,1]`.
2. The summation of the two angles :math:`\Sigma\theta=\theta_1+\theta_2` and the difference between two angles :math:`\Delta\theta=\theta_1-\theta_2`, where :math:`\theta_1` is for neutrino beams.
3. Every quantity is in unit of :math:`\mu`.


First we check the result without matter, without vacuum frequency, and :math:`\Sigma\theta=2\pi/3`.

.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-0-lambda-divided-by-mu-0.png
   :align: center

   No matter, no vacuum frequency



We can also check the matter effect.

.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-0-lambda-divided-by-mu-1.png
   :align: center

   With matter, no vacuum frequency.


.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-0-lambda-divided-by-mu-10.png
   :align: center

   With matter, no vacuum frequency.



.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-0-lambda-divided-by-mu-100.png
   :align: center

   With matter, no vacuum frequency.



Then we check the result without matter, without vacuum frequency, and :math:`\Sigma\theta=2\pi/3`, and :math:`\frac{m k}{\mu}=0.1`.


.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-0.1-lambda-divided-by-mu-0.png
   :align: center

   No matter, no vacuum frequency.

The effect of :math:`m k/\mu` is also similar to matter effect.

.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-1-lambda-divided-by-mu-0.png
   :align: center

   Higher order Fourier modes, without matter, no vacuum frequency.



.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-10-lambda-divided-by-mu-0.png
   :align: center

   Higher order Fourier modes, without matter, no vacuum frequency.


Matter + Fourier modes also has suppression

.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-10-lambda-divided-by-mu-100.png
   :align: center

   Higher order Fourier modes, with matter, no vacuum frequency.




.. figure:: assets/plt2-sigmatheta-2Pi-divided-by-3-mk-divided-by-mu-1-lambda-divided-by-mu-10.png
   :align: center

   Higher order Fourier modes, with matter, no vacuum frequency.
