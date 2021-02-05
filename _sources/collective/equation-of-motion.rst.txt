Equation of Motion
====================


The most important reference about the equation of motion for neutrinos is [sigl1993]_.

.. [sigl1993] Sigl, G., & Raffelt, G. (1993). General kinetic description of relativistic mixed neutrinos. Nuclear Physics B, 406(1–2), 423–451. http://doi.org/10.1016/0550-3213(93)90175-O



Without much effort, we know that the equation of motion is the liouville's equation

.. math::
   i \frac{d}{dt}\rho = [H,\rho].


For the purpose of neutrino oscillations, we always assume they travel with speed of light thus

.. math::
   \frac{d}{dt} = \frac{d}{dr},

where :math:`r` is the distance travelled by the neutrino. However, in general, what we should have is

.. math::
   \frac{d}{dt} = \partial_t + \mathbf v\cdot \boldsymbol{\nabla}.




The Hamiltonian is composed of three different terms,

.. math::
   H = H_v + H_m + H_{\nu\nu},

where

.. math::
   H_v =& -\frac{1}{2}\beta\eta \omega_0 \sigma_3\\
   H_m =& \frac{1}{2} \sqrt{2}G_F n_e \sigma_3 \\
   H_{\nu\nu} =& \sqrt{2}G_F \int d\omega d\Omega_{\hat v'} n(\omega,\hat v')\beta(\hat v')\rho(\omega,\hat v') (1-\hat v \cdot \hat v'),

where :math:`\eta=\pm 1` for Normal Hierarchy and Inverted Hierarchy respectively, :math:`\beta=1` for neutrinos and :math:`\beta=-1` for antineutrinos. In other words, the vacuum frequency is :math:`\omega_v = \eta \omega_0`. :math:`\beta(\hat v')` indicates wether the density matrix :math:`\rho(\omega,\hat v')` is for neutrinos or antineutrinos. If :math:`\rho(\omega,\hat v')` is for antineutrinos, :math:`\beta(\hat v')=-1`, otherwise :math:`\beta(\hat v')=1`. More explicitly, the neutrino-neutrino interaction Hamiltonian is

.. math::
   H_v =& \begin{cases}
   -\frac{1}{2}\eta \omega_0 \sigma_3 & \text{for neutrinos}\\
   \frac{1}{2}\eta \omega_0 \sigma_3 & \text{for antineutrinos}
   \end{cases}\\
   H_{\nu\nu} =& \begin{cases}
   \sqrt{2}G_F \int d\omega d\Omega_{\hat v'} n(\omega,\hat v')\rho(\omega,\hat v') (1-\hat v \cdot \hat v') & \text{interacting with neutrinos} \\
   - \sqrt{2}G_F \int d\omega d\Omega_{\hat v'} n(\omega,\hat v')\bar\rho(\omega,\hat v') (1-\hat v \cdot \hat v') &  \text{interacting with antineutrinos}
   \end{cases}

Please note that in this notion,

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

   where :math:`\bar n_{total}` is the total number density of anti-neutrinos.

   In fact, the direction of momentum :math:`\hat v` depends only on an angle for line models, hence :math:`f(\theta)`. With this definition, we know that the number density of neutrinos within an angle :math:`[\theta, \theta + d\theta]` can be calculated

   .. math::
      n_{total} f(\theta) d\theta.

   Similarly, the the number density of antineutrinos within angle :math:`[\theta, \theta+d\theta]` is

   .. math::
      \bar n_{total} \bar f(\theta) d\theta.

3. Total number density of neutrinos and anti-neutrinos are related through a asymmetry parameter

   .. math::
      \alpha = \frac{\bar n_{total} }{n_{total}}.

With the two definitions we simplify the matter effect and neutrino self-interaction

.. math::
   H_m =& \frac{1}{2} \lambda \sigma_3 \\
   H_{\nu\nu} =& \sqrt{2}G_F n_{total} \int d\omega d\Omega_{\hat v'} f(\omega,\hat v)\rho(\omega,\hat v') (1-\hat v \cdot \hat v') \\
   & - \sqrt{2}G_F \bar n_{total} \int d\omega d\Omega_{\hat v'} \bar f(\omega,\hat v)\bar\rho(\omega,\hat v') (1-\hat v \cdot \hat v') \\
   =& \frac{1}{2}\mu \int d\omega d\Omega_{\hat v'} f(\omega, \hat v)\rho(\omega,\hat v') (1-\hat v \cdot \hat v') \\
   & - \frac{1}{2}\alpha \mu \int d\omega d\Omega_{\hat v'} \bar f(\omega, \hat v)\bar\rho(\omega,\hat v') (1-\hat v \cdot \hat v') ,

where

.. math::
   \mu = 2\sqrt{2} G_F n_{total}.
