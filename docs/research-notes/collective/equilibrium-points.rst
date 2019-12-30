Equilibrium Points
================================

I need a method to find the equilibrium points of neutrino oscillations.

.. admonition:: Why are Equilibrium Points Important
   :class: warning

   We always start from a very special equilibrium point that is the flavor states because this is how the neutrinos are produced.

   However, the equation of motion becomes quite nonlinear and is hard to speculate. But we might be able to infer which final state it is gonna fall into by determining the equialibrium states.

   For example, a polarized state or not.


Using a Simple Case
--------------------


:strike:`I tried two beams model using Schrodinger equation. It returns wave functions being zero for several parameters, which is not what I was looking for.` (That was silly. Another example of chaotic mind. The fixed point should be for polarization vector, not the wave function.)


I should use the equation of motion for polarization vector.

.. admonition:: EoM for Flavor Isospin
   :class: note

   The equation of motion is

   .. math::
      \frac{d}{dt} \mathbf s = \mathbf H \times \mathbf s,

   where

   .. math::
      \mathbf H = \mathbf H_v + \mathbf H_m + \mathbf H_{\nu\nu},

   and

   .. math::
      H_v &= \frac{\boldsymbol{\sigma}}{2} \cdot \mathbf H_v \\
      H_m &= \frac{\boldsymbol{\sigma}}{2} \cdot \mathbf H_m,

   The neutrino self-interaction term is

   .. math::
      \mathbf H_{\nu\nu} = \mu  \int d\omega' \int d\Omega' (1-\cos(\theta'_1 - \theta'_2)) \mathbf s(\omega',\Omega').


For two beams, the equilibrium point for flavor isospin is determined by

.. math::
   ( \omega^L \mathbf B + \lambda^L \mathbf L + \mu^L \mathbf D^L ) \times \mathbf P^L = 0,

where

.. math::
   \mathbf B^i =& \begin{pmatrix}
   0 \\
   \sin 2\theta_v \\
   \cos 2\theta_v
   \end{pmatrix}\\
   \mathbf L^i =& \begin{pmatrix}
   0 \\
   0 \\
   1
   \end{pmatrix}\\
   \mathbf D^L =& \int d\omega' \xi \mathbf P^R (\omega')\\
   \xi =& 1 - \cos(\theta^L -\theta^R).


For single energy, the equation becomes

.. math::
   ( \omega^L \mathbf B + \lambda^L \mathbf L + \mu^L \xi \mathbf P^R ) \times \mathbf P^L =& 0 \\
   ( \omega^R \mathbf B + \lambda^R \mathbf L + \mu^R \xi \mathbf P^L ) \times \mathbf P^R =& 0.
