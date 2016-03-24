Common Sense
-----------------




Units
~~~~~~~~~

Natural units makes the calculation of neutrinos convenient. The consequences are

1. The energy-mass-momentum relations becomes :math:`E^2 = p^2 + m^2`. Thus mass :math:`m`, momentum :math:`\mathbf p` and energy :math:`E` have the same units.
2. Angular momentum in quantum mechanics is :math:`L_z = m\hbar` where :math:`m` is a number. :math:`\hbar` is of unit angular momentum.
3. A plane wave in quantum mechanics is :math:`\Psi = A e^{ \frac{E t - p x}{\hbar} }`. :math:`\frac{E t - p x}{\hbar}` should be unitless, which means :math:`px` has unit angular momentum, which is obvious, while :math:`E t` also has the unit of angular momentum. Previously we noticed momentum has the same unit with energy, we should have time  :math:`t` has the same unit as length :math:`x`. Also we can conclude that length and time has the unit of :math:`1/E`.


One should notice that charge is unit 1 in natural units since

.. math::
   F = \frac{Qq}{4\pi r^2}.


The conversion between natural units and SI can be down by using the following relations.

.. math::
   1 \mathrm{GeV} &= 5.08 \times 10^{15} \mathrm {m^{-1}} \\
   1 \mathrm{GeV} &= 1.8\times 10^{-27} \mathrm{kg}


Useful Conversions in Neutrino Physics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Using natural units, length = time = 1/energy, thus we could scale quantities using energy, or whatever convinient energy or length scale we have.

In vacuum oscillations, the energy scale is the oscillation frequency :math:`\omega_v`. The length can be scaled using this energy scale. However, it is only convinient when we can restore the actually length in SI units. To fulfill it, we write down the conversion here. For two flavor oscillation, oscillation angular frequency is given by

.. math::
   \omega_v = \frac{\delta m^2}{2E} =  \frac{7.5\times 10^{-5}\mathrm{eV}^2}{2\times 1\mathrm{MeV}} \frac{\delta m^2}{7.5\times 10^{-5}\mathrm{eV}^2} \frac{1\mathrm{MeV}}{E} = 3.75\times 10^{-11}\mathrm{eV}  \frac{\delta m^2}{7.5\times 10^{-5}\mathrm{eV}^2} \frac{1\mathrm{MeV}}{E} .

On the other hand, electro-volt is related to length through the useful formula

.. math::
   197\mathrm{MeV}\cdot \mathrm{fm} = \hbar c = 1.

Thus we have the oscillation angular frequency written as

.. math::
   \omega_v &= 3.75\times 10^{-11}\mathrm{eV}  \frac{\delta m^2}{7.5\times 10^{-5}\mathrm{eV}^2} \frac{1\mathrm{MeV}}{E} \\
   &= 3.75\times 10^{-17}\mathrm{MeV}  \frac{\delta m^2}{7.5\times 10^{-5}\mathrm{eV}^2} \frac{1\mathrm{MeV}}{E} \\
   &= 1.90\times 10^{-4}  \mathrm{m}^{-1}  \frac{\delta m^2}{7.5\times 10^{-5}\mathrm{eV}^2} \frac{1\mathrm{MeV}}{E}.
   :label: common-sense-eqn-omega-v-si-unit

Vacuum oscillation equation of motion is

.. math::
   i\frac{d}{d x} \Psi = \frac{\omega_v}{2}(-\cos 2\theta_v \boldsymbol{\sigma_3} + \sin 2\theta_v \boldsymbol{\sigma_1}) \Psi,

which can be scaled using the energy scale

.. math::
   i\frac{d}{d \hat x} \Psi = \frac{1}{2}(-\cos 2\theta_v \boldsymbol{\sigma_3} + \sin 2\theta_v \boldsymbol{\sigma_1})\Psi ,

where :math:`\hat x = \omega_v x`. This could be convinient for numerical calculations, which, however, requires the relation

.. math::
   x = \frac{\hat x}{\omega_v} = \frac{\hat x}{  1.90\times 10^{-4}  \mathrm{m}^{-1}  \frac{\delta m^2}{7.5\times 10^{-5}\mathrm{eV}^2} \frac{1\mathrm{MeV}}{E} } = \frac{\hat x}{0.190} \mathrm{km} \frac{7.5\times 10^{-5}\mathrm{eV}^2}{\delta m^2}  \frac{E}{1\mathrm{MeV}}.


Another important situation is the 2 flavor neutrino oscillation in constant matter background :math:`\lambda_c = \sqrt{2}G_F n_e`. The energy scale is :math:`\omega_m` which is calculated using

.. math::
   \omega_m = \omega_v \sqrt{ \frac{\lambda_c}{\omega_v}^2 + 1 - 2 \frac{\lambda_c}{\omega_v}\cos 2\theta_v }.
   :label: common-sense-eqn-omega-m

Meanwhile, the effective mixing angle :math:`\theta_m` is determined by

.. math::
   \tan 2\theta_m = \frac{\sin 2\theta_v}{\cos 2\theta_v - \frac{\lambda}{\omega_v} }.

As we would like to scale the equation of motion like what we did for vacuum equation of motion, i.e.,

.. math::
   i \frac{d}{d\hat x} \Psi = \frac{1}{2}(-\cos 2\theta_m \boldsymbol{\sigma_3} + \sin 2\theta_m \boldsymbol{\sigma_1})\Psi ,

we find out the scaled distance

.. math::
   \hat x = \omega_m x.

To reverse the process and find out the actual SI unit distance after the numerical calculation, we use

.. math::
   x = \frac{\hat x}{\omega_m}.
   :label: common-sense-eqn-actual-distance-constant-matter

The procedure will be the following.

1. Calculate :math:`\omega_v` using :eq:`common-sense-eqn-omega-v-si-unit`.
2. Calculate :math:`\hat\lambda_c = \frac{\lambda_c}{\omega_v}`.
3. Calculate :math:`\omega_m` using :eq:`common-sense-eqn-omega-m`.
4. Find out the actual distance using :eq:`common-sense-eqn-actual-distance-constant-matter`.



Diagrams
~~~~~~~~~~~~~~~


.. figure:: assets/commonsense/understandingTernaryDiagram.png
   :align: center

   The meanings of points and lines in a ternary diagram. From `File:Vol1 Page 380 Image 0001.png@PetroWiki <http://petrowiki.org/File%3AVol1_Page_380_Image_0001.png>`_


In this documentation on neutrinos, we have all the readings of a point by looking into the line that goes to the left, which means that for the bottom axis, the left is 0 while the right is 1.


Refs and Notes
~~~~~~~~~~~~~~~~~

1. `A article about ternary diagram <http://petrowiki.org/Ternary_phase_diagrams>`_ .
