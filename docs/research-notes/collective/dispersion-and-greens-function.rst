Dispersion Relation and Instabilities Using Green's Function
=================================================================

.. admonition:: This is a review
   :class: warning

   This is my reading notes about the paper: `Capozzi, F., Dasgupta, B., Lisi, E., Marrone, A., & Mirizzi, A. (2017). Fast flavor conversions of supernova neutrinos: Classifying instabilities via dispersion relations, 1–25 <http://inspirehep.net/record/1604289>`_.


A Simple System
---------------------------------


For a nonlinear system which has a linearized relation

.. math::
   \mathscr D S = 0,

where :math:`\mathscr D` is a derivative operator that contains terms like :math:`\partial_t` and :math:`\boldsymbol\nabla`.

Assuming collective modes :math:`S = Q e^{i(\mathbf k \cdot \mathbf x - \omega t)}`, the equation becomes

.. math::
   D(\omega, \mathbf k) = 0,

which is in fact the dispersion relation.

The picture behind these math is that we are treating the field as waves. By "solving" the dispersion relation, we find :math:`\omega(\mathbf k)` or :math:`\mathbf k(\omega)`, which is substituted into the wave form,

.. math::
   S = Q e^{i(\mathbf k(\omega) \cdot \mathbf x - \omega t)},

or

.. math::
   S = Q e^{i(\mathbf k \cdot \mathbf x - \omega(\mathbf k) t)}.


However, we need to integrate over all Fourier modes in general. So we have the solution of the field

.. math::
   S = \int d\omega Q_\omega e^{i(\mathbf k(\omega) \cdot \mathbf x - \omega t)},

or

.. math::
   S = \int d\mathbf k Q_{\mathbf k} e^{i(\mathbf k \cdot \mathbf x - \omega(\mathbf k) t)}.


Instability of the system is related the convergence of the integrals. This was done by P. A. Sturrock. [Sturrock1958]_



For the general equation of coherence

.. math::
   \mathscr D S = f(\mathbf x,t),

the authors consider the Green's function of the equations, i.e.,

.. math::
   \mathscr D G = \delta(\mathbf x)\delta(t).

Fourier transform of :math:`G` leads to

.. math::
   D(\omega,\mathbf k) \tilde G = \mathrm{Const},

where the constant is chosen to be 1. The formal solution is

.. math::
   \tilde G = \frac{1}{D(\omega,\mathbf k)}.

Inverse Fourier transform of the solution

.. math::
   G(t,\mathbf x) = \frac{1}{(2\pi)^2} \iint d\mathbf k d \omega \tilde G e^{i(\mathbf k \cdot \mathbf x - \omega t)} = \frac{1}{(2\pi)^2} \iint d\mathbf k d \omega \frac{1}{D(\omega,\mathbf k)} e^{i(\mathbf k \cdot \mathbf x - \omega t)}.


.. admonition:: Choice of Coefficient
   :class: toggle

   The Fourier transform is chosen to be

   .. math::
      \tilde g = \frac{1}{(2\pi)^2} \iint d\omega d \mathbf k g e^{i(\mathbf k \cdot \mathbf x - \omega t)},

   which has coefficient :math:`1/(2\pi)^2`. The inverse transform would have no coefficient.


.. admonition:: Solution to S
   :class: note

   The solution for coherence is

   .. math::
      S = \iint G f d\mathbf x dt,

   which indicates that the Fourier mode

   .. math::
      \tilde S = \tilde G  \tilde f.



.. [Sturrock1958] Sturrock, P. A. (1958). `Kinematics of Growing Waves. Physical Review, 112(5), 1488–1503. <https://doi.org/10.1103/PhysRev.112.1488>`_


.. admonition:: One Pole Case
   :class: warning

   I have no idea how is Eqn. 27 derived.

   Also have questions about Eqn. 34 for convective instability of 0 group velocity.





Neutrinos
-----------------------



The off diagonal elements of the density matrix :math:`S` obays the equation of the form

.. math::
   i(\partial_t + \mathbf v \cdot \nabla) S = f(\mathbf x, t)

in linear regime.



Gap
------------------------
