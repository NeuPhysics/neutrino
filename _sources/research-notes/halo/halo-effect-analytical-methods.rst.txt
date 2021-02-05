Halo Effect - Analytical Methods
=================================

Linear Stability
---------------------------------


Single Beam Both Start with Electron Flavor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We assume that both the forward and backward beams are starting from electron flavor.

.. math::
   \rho_F &= \frac{1}{2}\begin{pmatrix}
   1 & \epsilon_F \\
   \epsilon_F^* & -1
   \end{pmatrix} \\
   \rho_B &= \frac{1}{2}\begin{pmatrix}
   1 & \epsilon_B \\
   \epsilon_B^* & -1
   \end{pmatrix}.

The linearized equation of motion is

.. math::
   i\partial_z \begin{pmatrix}
   \epsilon_F \\
   \epsilon_B
   \end{pmatrix} = \begin{pmatrix}
   R \mu + \eta & - R \mu \\
   \mu & -(\mu+ \eta)
   \end{pmatrix} \begin{pmatrix}
   \epsilon_F \\
   \epsilon_B
   \end{pmatrix},

where :math:`\eta` is the hierarchy and all quantities are scaled by :math:`\omega_v`.

We can solve the eigenvalues of this problem. To obtain complex solutions, we require :math:`\Delta < 0`, which translates to

.. math::
   \mu_-< \mu <\mu_+,

where

.. math::
   \mu_\pm = \frac{ -2 (1+R) \eta \pm 8 \sqrt{ R }  }{ (1-R)^2 }.


.. figure:: assets/halo-effect-analytical-methods/table-of-mu-values-for-instability.jpg
   :align: center

   Table of {:math:`\mu_{-}`, :math:`\mu_{+}`}.


We plot out growth rate as a function of :math:`R` and :math:`\mu`, which shows that such so called instabilities only exist for normal hierarchy.


.. figure:: assets/halo-effect-analytical-methods/growth-rate-mu-refl-nh.jpg
   :align: center

   For normal hierarchy. Vacuum mixing angle is set to 0.


.. figure:: assets/halo-effect-analytical-methods/growth-rate-mu-refl-ih.jpg
   :align: center

   For inverted hierarchy. Vacuum mixing angle is set to 0.




Single Beam Undetermined Back Beam
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



The equation of motion is

.. math::
   i\partial_z \rho_F &= [ H_F, \rho_F ] \\
   i\partial_z \rho_B &= [ H_B, \rho_B ] ,

where

.. math::
   H_F &=  R  \mu \rho_B\\
   H_B &= \mu \rho_F.

.. admonition:: Conventions
   :class: warning

   The angle contribution is :math:`1-\cos\theta=2`. We absorbe this factor into :math:`\mu`.



As for the initial states, we can assume some general forms

.. math::
   \rho_F &=  \frac{1}{2} \begin{pmatrix}
   1 & \epsilon_F \\
   \epsilon_F^* & -1
   \end{pmatrix}\\
   \rho_B &=  \frac{1}{2} \begin{pmatrix}
   a & \epsilon_B \\
   \epsilon_B^* & -a
   \end{pmatrix}.

The forward beam start from neutrino flavors. However, the state of the backward beam is to be determined. The exact state is not necessary since we are interested in linear stability.

We linearize the equation of motion by keeping only first order of the small off-diagonal elements.

.. math::
   i\partial_z \begin{pmatrix}
   1 & \epsilon_F \\
   \epsilon_F^* & -1
   \end{pmatrix} &= \frac{ R \mu}{2} \begin{pmatrix}
   0 & 2(a \epsilon_F -\epsilon_B) \\
   c.c. & 0
   \end{pmatrix} + \frac{R\mu}{2} \begin{pmatrix}
   0 & 2(a\epsilon_F - b) \\
   c.c. & 0
   \end{pmatrix} \\
   - i\partial_z \begin{pmatrix}
   1 & \epsilon_B \\
   \epsilon_B^* & -1
   \end{pmatrix} &= -\frac{\mu}{2} \begin{pmatrix}
   0 & 2(a \epsilon_F -\epsilon_B) \\
   c.c. & 0
   \end{pmatrix} - \frac{\mu}{2} \begin{pmatrix}
   0 & 2 (a\epsilon_F - b) \\
   c.c. & 0
   \end{pmatrix}


The system of equations can be easily solved and we found that the exponentials are :math:`e^{i(2a R -1) \mu z}`. No exponent growth is possible.

.. code-block:: Mathematica

   eqnF = I D[epsF[z], z] == alpha mu (a epsF[z] - epsB[z]) + alpha mu (a epsF[z] - b)
   eqnB = I D[epsB[z], z] == mu (a epsF[z] - epsB[z]) + mu (a epsF[z] - b)
   DSolve[{eqnF,eqnB},{epsF,epsB},z]


.. admonition:: The Two Beams have Synchronized Evolution
   :class: note

   Notice that the two equations can be combined to

   .. math::
      \partial_z  \epsilon_F = \partial_z ( R \epsilon_B ).

   This result indicates that the initial development of the forward and backward beams are synchronized.


.. admonition:: Dealing with Inhomogenous Differential Equations
   :class: toggle

   1. The solution to inhomogenous systems is the general solution plus the particular solution. At least we can know that if the general solution contains exponential growth terms, the final solution should also contain exponential growth terms, if the particular solution doesn't cancel them.
   2. Floquet theory for periodic matrix systems might be useful.



Linear Regime Behavior
`````````````````````````````````

The solutions to such a problem shows that we always obtain decreasing modes. It's not easy to comphrend. But the linear could be solved exactly.

In linear regime, we define the density matrices for forward and backward beams to be

.. math::
   \rho_F &= \frac{1}{2} \begin{pmatrix}
   1 & \epsilon_F \\
   \epsilon_B^* & -1
   \end{pmatrix} \\
   \rho_B &= \frac{1}{2} \begin{pmatrix}
   1 & \epsilon_B \\
   \epsilon_B^* & -1
   \end{pmatrix}.


The Hamiltonians are

.. math::
   H_F &= H_v + \mu \rho_F \\
   H_B &= H_v + R \mu \rho_B.

We will investigate the instability for zero mixing angle.

The linearized equation of motion can be simplified to

.. math::
   i\partial_z \begin{pmatrix}
   \epsilon_F \\
   \epsilon_B
   \end{pmatrix} = \begin{pmatrix}
   -\omega_v + R \xi \mu & - R \xi \mu \\
   \xi \mu & \omega_v - \xi \mu
   \end{pmatrix} \begin{pmatrix}
   \epsilon_F \\
   \epsilon_B
   \end{pmatrix}.

This equation can be easily solved. The eigenvalues are

.. math::
   \Omega_+ &= \frac{1}{2} ( (R-1)\xi\mu + \sqrt{\Delta} ) \\
   \Omega_- &= \frac{1}{2} ( (R-1)\xi\mu - \sqrt{\Delta} ),

where

.. math::
   \Delta = (1-R)^2 \mu^2 \xi^2 - 4\mu\xi \omega_v (1+R) + 4\omega_v^2.

The corresponding eigenvectors are

.. math::
   V_+ &=\begin{pmatrix}
   \frac{ -2\omega_v + \xi \mu (1+R) + \sqrt{\Delta} }{2\xi\mu} \\
   1
   \end{pmatrix} \\
   V_- &=\begin{pmatrix}
   \frac{ -2\omega_v + \xi \mu (1+R) - \sqrt{\Delta} }{2\xi\mu} \\
   1
   \end{pmatrix}.

The general solution to the equation is

.. math::
   \begin{pmatrix}
   \epsilon_F(z) \\
   \epsilon_B(z)
   \end{pmatrix} = C_+ V_+ e^{-i \Omega_+ z} +  C_- V_- e^{-i \Omega_- z}.


**The special property about this reflection prolem is that the density matrices for the forward and backward beams should be the same at the reflection point,** say :math:`L`. With such a simple relation, we can find the relations between :math:`C_\pm` by setting :math:`\epsilon_F(L)=\epsilon_B(L)`,

.. math::
   \frac{C_+}{C_-} = e^{-i(\Omega_- -\Omega_+)L} \frac{ \sqrt{\Delta} +  2\omega_v + \mu \xi (1-R) }{\sqrt{\Delta} -  2\omega_v - \mu \xi (1-R)}.


The solution to be problem can be simplified,

.. math::
   \begin{pmatrix}
   \epsilon_F(z) \\
   \epsilon_B(z)
   \end{pmatrix} = C_- e^{-i\Omega_- L} \left( \frac{ \sqrt{\Delta} +  2\omega_v + \mu \xi (1-R) }{\sqrt{\Delta} -  2\omega_v - \mu \xi (1-R)} V_+ e^{-i \Omega_+ (z-L)} +  V_- e^{-i \Omega_- (z-L)} \right).


We are interested in the absolute values of each elements so that the overall factors can be neglected. The forward beam evolution is obtained by taking the absolute value of :math:`\epsilon_F`,

.. math::
   \left\vert \epsilon_F \right\vert \propto \lvert (2\omega_v +\xi\mu(1-R) +i \delta ) ( -2\omega_v + \xi\mu(1+R) + i \delta ) e^{delta(z-L)} + ( -2\omega_v - \xi\mu(1-R) +i \delta ) ( -2\omega_v + \xi\mu(1+R) - i \delta ) e^{-delta(z-L)} \rvert,

in which :math:`\sqrt{\Delta}` is replaced by :math:`i \delta`.

Collecting terms, we could verify that it has the form

.. math::
   \left\vert \epsilon_F \right\vert \propto A + B \cosh( 2\delta(L-z) ).

The only :math:`z` dependent term is \cosh( 2\delta(L-z) ), which is decreasing within :math:`[0,L]` and is increasing in :math:`[L,2L]`. The slope at :math:`z=L` is 0.

.. figure:: assets/halo-effect-analytical-methods/cosh-function.png
   :align: center

   :math:`\cosh(2\delta(z-L))` with :math:`\delta=1`.




Nonlocal Boundary Value Problem
---------------------------------


.. _bvp-nonlocal-bc-references:

.. admonition:: Some References
   :class: note


   1. Springer Open has a `curated list of NBVP <https://www.springeropen.com/collections/nbvp>`_. `DENFC <https://www.springeropen.com/collections/denfc>`_.
   2. To solve coupled systems with nonlocal boundary conditions: Goodrich, C. S. (2017). `Pointwise conditions in discrete boundary value problems with nonlocal boundary conditions <https://doi.org/10.1016/j.aml.2016.11.011>`_. Applied Mathematics Letters, 67, 7–15.



References and Notes
----------------------
