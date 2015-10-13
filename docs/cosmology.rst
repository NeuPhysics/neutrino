Neutrinos and Cosmology
=================================================

Neutrinos, or rather weak interactions, play a very important role in cosmology.



Baryon Asymmetry in the Univserse
------------------------------------------------


.. index:: Cosmic Neutrino Background
.. index:: CNB

Cosmic Neutrino Background
--------------------------------


In big bang cosmology, neutrinos became independent when the expansion rate which is characterized by :math:`\Gamma_H=G_N (kT)^2` exceeds the rate of weak interaction :math:`\Gamma_W=G_F (kT)^5`.

.. admonition:: Rates
   :class: note

   The weak interaction cross section is approximately :math:`\sigma\sim G_F^2 (kT)^2` and neutrino density drops according to :math:`n_\nu \sim (kT)^3`. As we can imagine, the weak interaction time scale for neutrinos is given by :math:`t_\nu \sim \frac{1}{n_\nu \sigma} \sim \frac{1}{G_F^2(kT)^5}`. [1]_

The neutrinos decouple when we have the rates comparable, which is

.. math::
   \Gamma_H = \Gamma_W.

We find the energy scale is MeV while time scale is second. Also notice the decoupling for different flavors should be different.

As a result of expansion, those cosmic background neutrinos should be very cold.

* Number density: 112 neutrinos per cc for each flavor. This 112 includes both neutrinos and antineutrinos.
* Temperature: 1.94K which corresponds to :math:`1.67\times 10^{-4}\mathrm{eV}`.
* de Broglie wavelength: :math:`\lambda_\nu = \frac{h}{p_v}\sim 2.4 \mathrm{mm}` when we assume that :math:`p_v\sim 3T_\nu`.


Interactions
~~~~~~~~~~~~~~~~~~~~~~


Those neutrinos are not really relativistic. Thus we should be careful when dealing with the interactions.

All we need to do is to calculate the scattering and use the fact that refractive index is given by [1]_

.. math::
   n = 1 + \frac{N \lambda_v^2 M(0)}{2\pi},

where :math:`M(0)` is the forward scattering amplitude.

As an example, the refractive index for :math:`\nu_e` and :math:`\bar\nu_e` are given by [5]_

.. math::
   n = 1 \pm \frac{G_F N (3Z - A)}{\sqrt[2] E_\nu},

where :math:`\pm` is for neutrino and antineutrino respectively, :math:`N` is for target number density, :math:`Z` is the charge (atomic number) of target and :math:`A` is the mass, :math:`E_\nu` is the neutrino energy. [5]_ I have an exrtra :math:`2\pi`.

Here is a `table <assets/cosmology/refractive-index-all-flavor.tgn>`_ of the refractive index for all neutrinos on matter for nonrelativistic neutrinos where I used :math:`T_\nu` as the kinetic energy of neutrinos.

+----------------------------------------------+-----------------------------------------------+--------------------+
|                    Flavor                    |               Refractive Index n              |       Comment      |
+----------------------------------------------+-----------------------------------------------+--------------------+
|                 :math:`\nu_e`                | :math:`1+\frac{G_F N (3Z-A)}{2\sqrt{2}T_\nu}` |                    |
+----------------------------------------------+-----------------------------------------------+--------------------+
|               :math:`\bar\nu_e`              | :math:`1-\frac{G_F N (3Z-A)}{2\sqrt{2}T_\nu}` |                    |
+----------------------------------------------+-----------------------------------------------+--------------------+
|     :math:`\nu_\mu` and :math:`\nu_\tau`     |  :math:`1+\frac{G_F N (Z-A)}{2\sqrt{2}T_\nu}` | No charged current |
+----------------------------------------------+-----------------------------------------------+--------------------+
| :math:`\bar\nu_\mu` and :math:`\bar\nu_\tau` |  :math:`1-\frac{G_F N (Z-A)}{2\sqrt{2}T_\nu}` | No charged current |
+----------------------------------------------+-----------------------------------------------+--------------------+








Detection
~~~~~~~~~~~~~~~~~~~~


Since the Earth is moving in the CNB, it has been suggested that we detect the dipole moment of CNB. Neutrinos ahead of the moving velocity will go cross an object on the Earth then generate a tiny force on the object. We might try to detect the force and compare it with the theoretical prediction, even though it is very hard.

Direct detection experiments using this principle have been proposed to detect CNB [2]_ [3]_ [4]_. However these proposals are without the reach of current technology. [1]_



.. admonition:: How Hard to Detect
   :class: note

   The number density of CNB neutrinos is about :math:`10^2\mathrm{cm}^{-3}`, which is comparable to the number density of CMB photons. CMB photons are so hard to detect, even though it is electromagnetic interaction. Now we are talking about weak interaction.




Resonant Absorption of Cosmic-Ray
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


This method was proposed by T. Weiler [6]_ . **This section works as the note of his paper.**

The basic idea is to look at the :math:`\nu \bar\nu` annihilation on the Z resonance.




.. admonition:: Background
   :class: note

   **Estimation of neutrino chemical potential** is done using the limit that neutrino energy density should be less than the total energy density of the universe.

   To calculate the energy density of the neutrinos we need the phase space density which requires the distribution. In this paper, Weiler used the Fermi-Dirac distribution assuming :math:`m\ll T`. (The reason is that we are looking at a distribution generated at early universe. This approximation is explained in J. Bernstein and G. Feinberg, Phys. Lett. 101B, 39 (1981).)

   .. math::
      f_{\nu_i}(p) = \frac{1}{ \exp\left( p/T_d - \bar \mu_i \right) +1 },

   where :math:`\nu_i` as the subscript means the flavor of the neutrinos, :math:`T_d` is the temperature at decoupling of neutrinos, :math:`\bar\mu_i` is the chemical potential, antineutrinos have chemical potential :math:`-\bar\nu_i`.

   The next step is to implement cosmic expansion into this distribution. Comsic expansion will affect the momentum of the neutrinos,

   .. math::
      \frac{p(a_d)}{p(a)} = \frac{a}{a_d},

   where :math:`a` is the scale factor and subscript :math:`{}_d` means the value at decoupling.

   Define a new quantity :math:`\beta = \frac{a}{a_d}`, we can rewrite the distribution at any moment,

   .. math::
      f_{\nu_i}(p(a)) = \frac{1}{ \exp\left( \beta p(a) - \bar \mu_i \right) +1 }.

   Using this distribution we can calculate the number density of neutrinos as well as the energy density of neutrinos or any statistical quantities,

   .. math::
      n_{\nu_i} (\bar \mu_i) &= \frac{1}{(2\pi)^3} \int d^3p f_{\nu_i}(p(a)) \\
      u_{\nu_i} & = \frac{1}{(2\pi)^3} \int d^3p \sqrt{p^2+m_i^2} \left( f_{\nu_i}(p(a)) + f_{\bar\nu_i}(p(a)) \right).

   Cosmic background neutrinos are nonrelativistic. To see this we need to compare the temperature of neutrinos and their mass. The masses are less than 1eV while the temperature from estimation using scale factor is actually :math:`1/\beta = \frac{T_{\gamma_0}}{2.7K}\times 1.66\times 10^{-4} \mathrm{eV}`, which is much smaller than eV scale. [6]_





.. admonition:: A Simple Estimation of Neutrino Mass Constraint
   :class: note

   Using the fact that neutrino energy density should be less than the total energy density of the universe, we could have a very simple upper limit constraint for neutrino mass. [6]_

   As we have seen the neutrino energy density can be written as a function of chemical potential :math:`\bar\mu_i` and mass :math:`m_i`. To do the esitmation, we set chemical potential to 0 and use **degenerate neutrino gas**,

   .. math::
      \sum_i m_i \leq \frac{\rho_0}{2 n_\nu(0)} \sim 200 eV,

   where we considered the antineutrinos which brings the factor 2.

   We also have

   .. math::
      n_\nu(0) = \frac{3\xi(3) }{4\pi^2 \beta_0^3} = 53 \mathrm{cm}^{-3},

   which differs from the modern results but the order of magnitude is correct. This is a good estimation.





.. admonition:: Distribution and Temperature
   :class: note

   One thing to notice is that temperature works similar as scale factor. The way to map temperature is to use the temperature of radiation. Temperature of radiation is given by [6]_

   .. math::
      T_\gamma = \eta \left( \frac{a_d}{a} T_d \right),

   where :math:`\eta = \left( \frac{11}{4} \right)^{1/3}`, from which we can solve out the factor :math:`\beta`,

   .. math::
      \beta = \frac{\eta}{T_\gamma}.

   Put in the numbers, we have :math:`\beta = \frac{2.7K}{T_{\gamma_0}} 6.25\times 10^{3} eV^{-1}`.

   Now we have a distribution that is related to the temperature of radiation.


.. admonition:: Mean-Free-Path
   :class: note

   As an estimation, the mean-free-path is given by

   .. math::
      \lambda \sim \frac{1}{n \sigma},

   where :math:`n` is the number density of background particles and :math:`\sigma` is the cross section of the interaction.

   The mean-free-path of cosmic ray among CNB is related to the cross section of weak interaction :math:`\sigma_W` which in turn is related to the mass of the weak interaction boson :math:`M_W` ,

   .. math::
      \lambda &\sim \frac{1}{n_{\nu}\sigma_W} \\
      & \sim \frac{1}{n_{\nu} \frac{G_F^2}{\pi} \frac{s}{1+\frac{s}{M_W^2}} }\\
      & \sim \frac{1}{n_{\nu} \frac{G_F^2}{\pi} s }.

   In center of mass frame, :math:`s` is calculated to be :math:`E\left\langle \epsilon \right\rangle`, where :math:`E` is the energy of the cosmic ray and :math:`\left\langle \epsilon \right\rangle` is the average energy of CNB. Notice that :math:`n_{\nu} \left\langle \epsilon \right\rangle = \rho_{\nu}` where :math:`\rho_{\nu}` is the energy density of CNB [6]_ ,

   .. math::
      \lambda &\sim \frac{1}{n_{\nu} \frac{G_F^2}{\pi} E\left\langle \epsilon \right\rangle }\\
      & \sim &\sim \frac{1}{\rho_{\nu} \frac{G_F^2}{\pi} E }\\
      & > \frac{\pi}{ 2G_F^2 E\rho_0},

   in which we use the fact that :math:`\rho_{\nu} < \rho_0`.







**Can we find signature of CNB in cosmic rays?** One way to think about this question, as stated in Weiler's paper, is to think about what is the requirement for us to detect the scattering of cosmic rays by CNB. The most general constraint is that the mean-free-path should be smaller than the Hubble radius, otherwise the effect would have a scale larger than the Hubble radius which can not be detected now.

To apply this constraint, Weiler found that

.. math::
   E > \frac{\pi}{2 G_F^2 \rho_0 H_0^{-1}} \gtrsim 10^{14} GeV.

But we do not see cosmic rays from far away at such energies because the universe is opaque to such particles, unless we have much higher density of CNB. In fact Weiler shows that we need at least :math:`10^4` times of the current number density to see the effect.

.. admonition:: Why Opaque
   :class: note

   For electrons, inverse Compton scattering with electromagnetic background in the unvierse is efficient enough to decrease the energy of them. [6]_

   Photomeson production is responsible for the elimination of protons.

   Due to the magnetic field of the galaxies, stars, or even planets, charged cosmic rays will produce synchrotron radiation and lose energy.



**Resonant absorption of cosmic ray lepton by CNB** can produce a effect in opacity. [6]_

.. admonition:: Resonant Absorption
   :class: note

   Suppose the background particle is not in a certain energy state but rather in a distribution of states, the scattering integration would be different. In a simple case as Breit-Wigner form, the cross section is related to the resoant width of the background particles.

Using Breit-Wigner form, [6]_

.. math::
   \bar\sigma = \int ds \frac{\sigma(s)}{M_R^2} = \frac{16\pi^2 S \Gamma(R\to l\nu)}{M_R^3},

where :math:`S` is the spin average factor, i.e., the number of outgoing spin states divided by the number of incoming spin states, :math:`R\to l\nu` means this is about a process for a resonant state to leptons and neutrinos, :math:`\Gamma` represents the width of the resonant states.

Weiler shows in his paper that

.. math::
   \frac{\Gamma(R\to l\nu)}{ M_R } \gtrsim \frac{ G_F M_R^2 }{ S n_\nu/ 50 \mathrm{cm}^{-3} }.



.. admonition:: More Explainations
   :class: note

   More here.



:math:`W^{\pm}` and :math:`Z` are the candidates for such resonant states.



Then we calculate the opacity and the transmission probability of cosmic rays for different energys.

Suppose we have a source of antineutrinos at redshift :math:`z`, the antineutrino energy we recieved is :math:`E`, then the source energy must be :math:`E(z+1)`. The resonant scattering, should, if any, happen between the energy range :math:`E\sim E(z+1)`.

.. figure:: assets/cosmology/weiler-resonat-absorption-of-cosmic-rays-cnb.png
   :align: center

   From Weiler paper. The bottom horizontal axis is the recieved energy of the antineutrinos, the vertical axis is the transmission probability. The energy is in units of :math:`M_Z^2/2m` where :math:`M_Z` is the mass of the Z boson and :math:`m` is the mass of neutrinos. The top horizontal axis is the nearest possible source of antineutrinos. If we detect antineutrino energy just at the resonance, the nearest possible source for such a resonant scattering is just in front of us.



A Possible Application of LIGO
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Speed with respect to the CMB
   :class: note

   The earth is moving through the CMB background at a speed of :math:`583,333\mathrm{m/s}`.



In the paper by Vogel [1]_, the force by these CNB on a sphere of radius

.. math::
   a_t \approx 2\times 10^{-38} \left( \frac{n_\nu}{\bar n_\nu} \right) \left( \frac{10^{-3}c}{\nu_{\mathrm{relative}}}  \right) \left( \frac{\rho_t}{1\mathrm{g/cm^3}} \right)  \left( \frac{r_t}{\bar\lambda} \right) \mathrm{cm/s^2}.


For an approximation, I use :math:`\nu_{relative}=10^{-3}c`, a proper set up of the experiment would be about the order of :math:`a_t\sim 10^{-38}\mathrm{cm/s^2}`.

A simple back-of-the-envelope estimation by assuming an constant acceleceration due to the CNB on the mirrors shows it is not possible to detect the effect of CNB modulation of the shift of the mirrors under current technology.















Refs & Notes
-----------------


.. [1] Vogel, P. (2015). How difficult it would be to detect cosmic neutrino background? (Vol. 025001, p. 140003). `doi:10.1063/1.4915587 <http://dx.doi.org/10.1063/1.4915587>`_ .
.. [2]  N. Cabibbo and L. Maiani, `The vanishing of order-G mechanical effects of cosmic massive neutrinos on bulk matter <http://www.sciencedirect.com/science/article/pii/0370269382901277>`_ Phys.Lett. B114, 115 (1982).
.. [3] P. Langacker, J. P. Leveille and J. Sheiman, `On the detection of cosmological neutrinos by coherent scattering <http://journals.aps.org/prd/abstract/10.1103/PhysRevD.27.1228>`_ Phys. Rev. D 27, 1228 (1983)
.. [4] L. Stodolsky, `Speculations on Detection of the "Neutrino Sea" <http://journals.aps.org/prl/abstract/10.1103/PhysRevLett.34.110>`_ Phys. Rev. Lett. 34, 110 (1975); (erratum) Phys. Rev. Lett. 34, 508 (1975).
.. [5] Lewis, R. R. (1980). Coherent detector for low-energy neutrinos. Physical Review D, 21(3), 663–668. doi:10.1103/PhysRevD.21.663.
.. [6] Weiler, T. (1982). Resonant Absorption of Cosmic-Ray Neutrinos by the Relic-Neutrino Background. Physical Review Letters, 49(3), 234–237. doi:10.1103/PhysRevLett.49.234
