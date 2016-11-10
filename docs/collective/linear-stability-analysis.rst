Linear Stability Analysis
========================================

Some General Discussion
-------------------------




Equation of Motion
---------------------


The equation of motion is the liouville's equation

.. math::
   i \partial_t \rho = [H,\rho].


The Hamiltonian is composed of three different terms,

.. math::
   H = H_v + H_m + H_{\nu\nu},

where

.. math::
   H_v =& -\frac{1}{2}\eta \omega_0 \sigma_3\\
   H_m =& \frac{1}{2} \sqrt{2}G_F n_e \sigma_3 \\
   H_{\nu\nu} =& \sqrt{2}G_F \int d\omega d\Omega_{\hat v'} n(\omega,\hat v')\rho(\omega,\hat v') (1-\hat v \cdot \hat v'),

where :math:`\eta=\pm 1` for Normal Hierarchy and Inverted Hierarchy respectively. In other words, the vacuum frequency is :math:`\omega_v = \eta \omega_0`. Please note that in this notion,

1. :math:`\omega_0` **is meant to be the absolute value of the frequency**, since :math:`\eta` takes care of the signs.
2. the integral in :math:`H_{\nu\nu}` must take care of both interactions with neutrinos and anti-neutrinos, thus the density matrix is not only for neutrinos.

For the simplicity of notions, we define some new quantities.

1. We define :math:`\lambda` to measure the matter interactions

   .. math::
      \lambda = \sqrt{2} G_F n_e.

2. Angle distribution of number density is defined as

   .. math::
      f(\hat v) = \frac{n(\omega,\hat v)}{n_{total}},

   where :math:`n_{total}` is the total number density of neutrinos for all energies. It can also be defined for anti-neutrinos

   .. math::
      \bar f(\hat v) = \frac{n(\omega,\hat v)}{\bar n_{total}},

   where :math:`\bar n_{total}` is the total number density of anti-neutrinos

3. Total number density of neutrinos and anti-neutrinos are related through a asymmetry parameter

   .. math::
      \alpha = \frac{\bar n_{total} }{n_{total}}.

With the two definitions we simplify the matter effect and neutrino self-interaction

.. math::
   H_m =& \frac{1}{2} \lambda \sigma_3 \\
   H_{\nu\nu} =& \sqrt{2}G_F n_{total} \int d\omega d\Omega_{\hat v'} f(\omega,hat v)\rho(\omega,\hat v') (1-\hat v \cdot \hat v') \\
   & + \sqrt{2}G_F \bar n_{total} \int d\omega d\Omega_{\hat v'} \bar f(\omega,hat v)\bar\rho(\omega,\hat v') (1-\hat v \cdot \hat v') \\
   =& \frac{1}{2}\mu \int d\omega d\Omega_{\hat v'} f(\omega,hat v)\rho(\omega,\hat v') (1-\hat v \cdot \hat v') \\
   & + \frac{1}{2}\alpha \mu \int d\omega d\Omega_{\hat v'} \bar f(\omega,hat v)\bar\rho(\omega,\hat v') (1-\hat v \cdot \hat v') ,

where

.. math::
   \mu = 2\sqrt{2} G_F n_{total}.


Linearize the EoM
----------------------

To linear the EoM we start from a state where almost all neutrinos are in one flavor,

.. math::
   \rho = \begin{pmatrix}
   1 & \delta \\
   \delta^* & 0
   \end{pmatrix}.

Suppose we have a Hamiltonian in flavor basis of the form

.. math::
   H = \begin{pmatrix}
   -h_0 & h \\
   h^* & h0
   \end{pmatrix},

the commutator of Hamiltonian and density matrix is

.. math::
   [H,\rho] = \begin{pmatrix}
   \delta^* h - \delta h^* &  - h - 2 \delta h_0 \\
   2\delta h_0 + h^* & -\delta^* h + \delta h^*
   \end{pmatrix}.

We linearize the equation by keeping only the first order terms of :math:`\delta`. For this purpose, we need to calculate the neutrino self-interaction :math:`H_{\nu\nu}`.

However, from the general form of :math:`H_{\nu\nu}`, which is an integral or convolution of :math:`\rho`, we would expect that the off diagonal element of the Hamiltonian :math:`h`, is of first order, if we start from a density matrix that has first order, which is what we do. Thus we expect :math:`h \delta^*` is second order effect, which we will neglect.

Finally, we obtain one equation for each beam, which can either be the (1,2) element or the (2,1) element.


Four-Beam Line Model
-----------------------

.. admonition:: Some Definitions
   :class: note

   We define some parameters in this section.

   .. math::
      \lambda =& \sqrt{2} G_F n_e \\
      \eta = & \pm 1\\
      \omega_v =& \lvert \Delta m^2/2E \rvert \\
      \mu =& \sqrt{2} G_F n_{\nu_e}\\
      n_{\bar\nu_e} = & \alpha n_{\nu_e}.

   :math:`\eta` is determines the hierarchy of the neutrinos. :math:`\eta=+1` means normal hierarchy, and :math:`\eta=-1` means inverted hierarchy.

   We use :math:`{}^L` to denote the beam on the left, :math:`{}^R` to denote the beam on the right, and :math:`\bar{\delta}` to denote that the beam is composed of anti-neutrinos.



.. figure:: assets/collective/four-beams-model-geometry.png
   :align: center

   Four beams model


For any line model of finite beams, we can specify each beam by three parameters,

.. math::
   \{\rho, \theta, \alpha\},

where :math:`\rho` is the density matrix of the beam, :math:`\theta` is the angle of the beam defined by some rule, :math:`\alpha` is the ratio of the particle number density to the neutrino number density. If we are talking about a neutrino beam instead of an anti-neutrino beam, we have :math:`\alpha=1`.

In the four-beam case, we define the system using the following three lists of parameters,

.. math::
   \delta =& \{\delta^L, \bar\delta^L, \delta^R, \bar\delta^R\}\\
   \theta =& \{1, \alpha, \alpha, 1\}\\
   \alpha =& \{ \theta_1, \theta_2, \pi-\theta_2,\pi-\theta_1 \},

where the :math:`\delta`'s are used to construct the perturbed density matrix,

.. math::
   \rho^L = \begin{pmatrix}
   1 & \delta^L \\
   \delta^{L*} & 0
   \end{pmatrix}


.. admonition:: Perturbed Density Matrix
   :class: toggle

   We are interested in flavor conversion. So we start from a state with one flavor, which renders the density matrix

   .. math::
      \rho^{X} = \begin{pmatrix}
      1 & 0 \\
      0 & 0
      \end{pmatrix}.

   However, as dynamics is our concern, we need to add the perturbation to investigate the stability

   .. math::
      \rho^{X} = \begin{pmatrix}
      1 & \delta^{X} \\
      \delta^{X*} & 0
      \end{pmatrix}.

So we can now write down the equation of motion for the system with this perturbed density.

.. admonition:: :math:`\delta` as a vector
   :class: toggle

   In fact, as we'll derive the linearized equations, :math:`\delta` is used as a vector

   .. math::
      \delta = \begin{pmatrix}
      \delta^L \\ \bar\delta^L \\ \delta^R \\ \bar\delta^R
      \end{pmatrix}.


With all the definitions and conventions specified, we can write down the equation of motion without trouble, IN PRINCIPLE.

First of all, we find the Hamiltonian,

.. math::
   H_v = & -\frac{1}{2}\eta \omega_v \sigma_3, \\
   H_m = & \frac{1}{2}\lambda \sigma_3.

The neutrino self interaction term requires some elabration on it. We take the left neutrino beam as an example. It experiences interactions with three beams, :math:`\{\bar\rho^L, \bar\theta^L, \alpha\}`, :math:`\{\bar\rho^R, \bar\theta^R, \alpha\}`, as well as :math:`\{ \rho^R, \theta^R, 1\}`. So :math:`H_{\nu\nu}^L` should have three terms,

.. math::
   H_{\nu\nu}^L = & \mu \alpha (1-\cos(\theta_1-\theta_2)) \bar\rho^L + \mu \alpha (1-\cos(\theta_1+\theta_2))\bar\rho^R + \mu (1-\cos 2\theta_1) \rho^R.

This procedure can be down for all other beams easily. Or we can use the power of the All Mighty Mathematica.

The equation of motion is reduced to one equation about :math:`\delta`'s for each beam.

.. math::
   i \partial_r \delta = - h - 2 \delta h_0,

where

.. math::
   h_0 =& \frac{1}{2}\eta \omega_v - \frac{1}{2}\lambda,

and :math:`h` is determined by the expression of :math:`H_{\nu\nu}`. Then we rewrite the equation into the form

.. math::
   i \partial_r \delta = M \cdot \delta,

where :math:`M` is the coefficient matrix that generate the equations we previously derived. This procedure can be done by Mathematica.

.. math::
   i \partial_r \begin{pmatrix}
   \delta^L \\ \bar\delta^L \\ \delta^R \\ \bar\delta^R
   \end{pmatrix} =
   \begin{pmatrix}
   \lambda + \mu(1+\cos(2\theta_1)) + \alpha \mu (1 - \cos(\theta_1-\theta_2)) + \alpha \mu (1 + \cos(\theta_1+\theta_2)) - \eta \omega_v & -\alpha \mu(1-\cos(\theta_1 - \theta_2)) & -\alpha \mu(1+\cos(\theta_1 + \theta_2)) & -\mu(1+\cos(2\theta_1)) \\
   - \mu(1-\cos(\theta_1 - \theta_2)) & \lambda + \mu (1-\cos(\theta_1-\theta_2)) + \alpha \mu (1+\cos(2\theta_2)) + \mu (1+\cos(\theta_1+\theta_2)) -\eta \omega_v & -\alpha \mu(1+\cos(2 \theta_2)) & -\mu(1+\cos(\theta_1 + \theta_2)) \\
   -\mu(1+\cos(\theta_1 + \theta_2)) & -\alpha \mu(1+\cos(2\theta_2)) &
   \lambda + \mu(1-\cos(\theta_1-\theta_2)) + \alpha \mu (1 + \cos(2\theta_2)) + \mu (1 + \cos(\theta_1+\theta_2)) - \eta \omega_v  & -\mu (1 - \cos (\theta_1-\theta_2)) \\
   -\mu(1+\cos(2\theta_1)) & -\alpha\mu (1+ \cos(\theta_1+\theta_2)) & -\alpha \mu (1-\cos(\theta_1-\theta_2)) & \lambda + \mu(1+\cos(2\theta_1)) + \alpha \mu (1 - \cos(\theta_1-\theta_2)) + \alpha \mu (1 + \cos(\theta_1+\theta_2)) - \eta \omega_v
   \end{pmatrix}
   \begin{pmatrix}
   \delta^L \\ \bar\delta^L \\ \delta^R \\ \bar\delta^R
   \end{pmatrix}.


Linear stability analysi basically becomes finding the eigenvalues of matrix :math:`M`.
