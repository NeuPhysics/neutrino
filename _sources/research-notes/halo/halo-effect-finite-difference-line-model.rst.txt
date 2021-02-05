Halo Effect in Line Model - Finite Difference
================================================



Model
----------------------------------


.. figure:: assets/halo-effect-finite-difference-line-model/line-model.svg
   :align: center

   Line model that I am using. I used Snell's law for simplicity. Geogebra file can be downloaded :download:`line-model.ggb </_static/assets/halo/halo-effect-finite-difference-line-model/line-model.ggb>`


.. admonition:: About Reflection Angle
   :class: warning

   In principle, the reflection doesn't have to be Snell's law. The scattering can be in any angle with different amplitudes. Here I am using this very simple Snell's law just to explore the effect of halo.

   The effect of **breaking symmetry of Snell's law** can also be interesting.




Conventions
-----------------------------------------


The solver ``halo_euler_forward_one_nunubar(StateArray* rho_array_ptr, StateArray* rho_array_store_ptr, StateArray* rho_another_array_ptr, StateArray* rho_another_array_store_ptr, const double dt, const int totallength, const double spectrum[2], const double reflection, const double mu_arr[2], const double costheta[4])`` takes in many parameters.

1. The first two arrays are the left beam, and the next two arrays are the right beams.
2. ``dt`` is the stepsize.
3. ``spectrum[2]`` is the spectrum of the two beams. In fact this is simply the sign of the interactions. This is also used to determine the sign of :math:`\omega_v`. The first element should be the left beam and the second element should be the right beam.
4. ``reflection`` is the reflection coefficient. We have the same reflection coefficient for both beams regardless of the content since we are discussing neutral current scattering.
5. ``mu_arr[2]`` is {:math:`\mu_L`, :math:`\mu_R`}.
6. The angles ``costheta[4]`` parameters: { :math:`\cos(2 \theta_L)`, :math:`\cos(2 \theta_R)` , :math:`\cos( \theta_R- \theta_L)`, :math:`\cos (\theta_R+\theta_L)` }; **It might be better to use** :math:`\xi` **which is defined as** :math:`1-\cos(\text{whichever angles})`.



Validation of Code
---------------------------------


Bipolar model
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In this simple setup we neglect reflections and also the interactions with backward beams. The neutrino oscillations should be reduced to the simple line model.

The instabilities can be calculated using :ref:`two-beams-model`.

.. admonition:: Equal Number Density Neutrinos and Antineutrinos
   :class: note

   The left beam is neutrinos and the right beam is antineutrinos, which has the same number density as the left beam.







References and Notes
------------------------------
