Linear Stability Analysis
========================================


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
   \end{pmatrix}。

We linearize the equation by keeping only the first order terms of :math:`\delta`. For this purpose, we need to calculate the neutrino self-interaction :math:`H_{\nu\nu}`.
