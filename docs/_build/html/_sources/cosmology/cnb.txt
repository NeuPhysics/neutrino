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




Spectulations on Detection of the "Neutrino Sea"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　
L. Stodolsky wrote a paper back in 1974 where he investigated several ideas of detecting CNB.

The interaction between neutrinos and electrons is spin dependent. Different spin states experience different interaction. This feature could possibly be used to detect CNB.


.. figure:: assets/cosmology/neutrino-electron-feynman.png
   :align: center

   Neutrino electron interaction. The left is charged current while the right is neutral current.


The Lagrangian for such interactions is

.. math::
   \mathscr{L}_{eff} =& -\frac{G_F}{\sqrt{2}} \{ {\color{red} [ \bar \nu_e \gamma^\rho (1-\gamma^5) e ] [\bar e \gamma_\rho (1-\gamma^5) \nu_e]  } \\
   &+ {\color{blue} [ \bar \nu_e \gamma^\rho (1-\gamma^5) \nu_e ] [\bar e \gamma_\rho (g_V^l-g_A^l\gamma^5) e ]  } \}

Red term is for charged current which exchanges the charge and blue term is for neutral current processes.


.. admonition:: Fierz Transformation
   :class: note

   In the context of weak interaction, for a Lagrangian,

   .. math::
      \mathscr{L}(\Psi_1,\Psi_2,\Psi_3,\Psi_4) = [ \bar\Psi_1 \gamma^\mu ( 1 - \gamma^5 ) \Psi_2  ] [ \bar \Psi_3 \gamma_\mu ( 1-\gamma^5 ) \Psi_4 ],

   exchange the field :math:`\Psi_2` and :math:`\Psi_4` doesn't change the result.

   The Lagrangian is called V-A theory because people define

   .. math::
      \mathscr{L}^V(\Psi_1, \Psi_2,\Psi_3,\Psi_4) &= [ \bar\Psi_1 \gamma^\mu \Psi_2 ] [ \bar\Psi_3 \gamma_\mu \Psi_4 ] ,\\
      \mathscr{L}^A (\Psi_1, \Psi_2,\Psi_3,\Psi_4) &= [ \bar\Psi_1 \gamma^\mu \gamma^5 \Psi_2 ]  [ \bar\Psi_3 \gamma_\mu \gamma^5 \Psi_4 ] .

   The questionis how big the difference between neutral current only processes (such as muon or tau neutrinos and electrons interactions), and charged current plus neutral current processees (such as electron neutrino and electron interactions). To see this, we can apply Fierz transformation to the Lagrangian,

   .. math::
      \mathscr{L}_{eff} = -\frac{G_F}{\sqrt{2}} [ \bar \nu_e \gamma^\rho (1-\gamma^5) \nu_e ] [ \bar e \gamma_\rho ( (1+g_V^l) - (1+g_A^l) \gamma^5 ) e ]  .

   As we can see the difference is not so big. We can do estimations for electron neutrino and electron interaction only which is also a good approximation for other interactions.



To calculate the spin dependent energy, we should first estimate the current density of CNB neutrinos,

.. math::
   \vec J = 2\rho \frac{\vec v }{ \sqrt{1-v^2} },


where :math:`v` is the velocity of electrons with respect to the CNB.

Using this current density, we calculate the energy related to the two different helicity states of electrons,

The interaction energies for two different helicity states are,

.. math::
   \frac{G_F}{\sqrt{2}} \vec \sigma\cdot \vec J = \pm \sqrt{2}G_F \rho \frac{ v}{\sqrt{1-v^2}}.

which is similar to magnetic monent and B field interaction.

The next question, down this derivation, is the number density of CNB neutrinos :math:`\rho`, which is estimated as

.. math::
   \rho \propto p_F^3.


Thus the energy split due to different helicity is

.. math::
   \Delta E = 2\sqrt{2}G_F \rho \frac{\vec v }{\sqrt{1-v^2}} = 0.6\times 10^{-24} \left( \frac{p_F}{eV}\right)^3 \frac{v}{\sqrt{1-v^2}} eV.

The Fermi momentum is gained from

* Beta decay: :math:`p_F\leq 60 eV`;
* Cosmological: :math:`p_F\leq 0.75\times 10^{-2} eV`,

which leads to

.. math::
   \Delta E \sim 10^{-19}  eV ~ to ~ 10^{-30}   eV.



Is this small? Can we detect it? There are three different ideas given by Stodolsky,

* electrons with mixed helicity states which develop different phases due to propagation,
* ferromagnetic material of 1 ton has :math:`10^{27}` polarized spins which can experience a torque,
* He3 mixed to low temperature He4 can retain spin polarization for a long time which can be used to detect the phase difference.


The idea behind electron as detector is

* electron Beams with equally :math:`\pm` helicity states,
* + and - states have different energies = two different frequencies,
* phase difference between the two states to be detected.

The phase difference is calculated as

.. math::
   \phi &\sim \Delta E t  \sim 2\sqrt{2}G_F \rho z \\
   & \sim 3\times 10^{-20} \left( \frac{p_F}{eV} \right)^3 rad/cm,

which is roughly :math:`\left( \frac{p_F}{eV} \right)^3 rad` for a light year travel.

This means we need to build very rapid electrons and maintain the spin polarization for a long time or we can use the fact that the Earth is moving with a velocity of :math:`250 km/s` around the center of the galaxy. For the second choice we need to build a box of electrons which can retain the spin for a long time. Since the estimation also works for neutral current, the idea of He3 comes in.

The second method is to use a big chunk of ferromagnetic material, which contains a lot of palorized electrons thus is going to experience a torque due to the CNB.

The torque for 1 ton ferromagnetic material is

.. math::
   \left( \frac{p_F}{eV}\right)^3 eV,

which is such small. Besides, we need to consider external magnetic field since this is a big block of ferromagnetic material. The author did propose to devise a method to measure this small torque using gravitational wave detectors, in our current view, LIGO.






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


But we could alway use other approach like the one proposed by L. Stodolsky. [4]_



Neutrino Capture on Unstable Nuclei
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is from the paper by Vogel. [1]_


.. figure:: assets/cosmology/bdecay.jpg
   :align: center

   Beta decay. From `KATRIN <https://www.katrin.kit.edu/79.php>`_

A nulei :math:`A_Z` that captures a electron neutrino will become :math:`A_{Z+1}`,

.. math::
   A_Z + \nu_e \to A_{Z+1} + e^-.

Since a nutron is transformed into a proton through :math:`\nu_e + n\to e^- + p^+`, releasing energy :math:`Q` which is called the :math:`Q` value,

.. math::
   Q = m(A_Z) + m_{\nu_e} - m(A_{Z+1}) - m_e .

By definition, :math:`Q` is the sumation of the kinetic energy difference of electrons and neutrinos,

.. math::
   K_{e^-} - K_{\nu_e} = Q,

since we have the conservation of energy

.. math::
   m(A_Z) + m_{\nu_e} + K_{\nu_e} - m(A_{Z+1}) - m_e -K_{e^-} =0 .

The beta decay :math:`Q` value of :math:`A_Z \to A_{Z+1} + e^- + \bar \nu_e` is given by

.. math::
   Q_\beta &= m(A_Z) - m(A_{Z+1}) - m_{e^-} - m_{\nu_e} \\
   & = Q - m_{\nu_e} - m_{\nu_e}\\
   &= Q - 2 m_{\nu_e} .

The kinetic energy of electrons is

.. math::
   K_{e^-} &= Q + K_{\nu_e} \\
   &= Q_\beta + 2 m_{\nu_e} + K_{\nu_e}.


.. figure:: assets/cosmology/beta_spectrum_of_RaE.jpg
   :align: center

   Beta dacay spectrum. From `File:Beta spectrum of RaE.jpg@Wikipedia <https://commons.wikimedia.org/wiki/File:Beta_spectrum_of_RaE.jpg>`_

The key point comes next. In beta decay, the maximum electron kinetic energy is given by :math:`Q_\beta`, which means that even in a beta decay beckground, the electrons that is responsible for the neutrino capture is still distinguishable because their energy is larger than the the beta decay electrons' energy. The difference is as large as :math:`2 m_{\nu_e} + K_{\nu_e}` or :math:`2 m_{\nu_e}` as we are talking about CNB neutrino with :math:`K_{\nu_e}\to 0`.


Even though it sounds feasible at this level, here are several questions to ask.

* What nuclei should we use?
* How many of such nuclei is needed? Can we produce them? Is is feasible to build a detector with so many such nuclei?


The first question is related to cross section and life time. Large cross section and a suitable life time of the unstable nuclei :math:`A_Z` are needed. We also need to make sure that the signal we want can be seperated from the background beta decay signal.

Anyway, what do we choose to use as the detector? Tritium.

.. figure:: assets/cosmology/spectrum_rdax_1200x678.jpg
   :align: center

   Tritum decay spectrum. From KATRIN.

Tritum decay has a very clean and small tail. Since it is relatively light, the decay is more sensitive to neutrino mass. The life time is 12.3 years which is not too long nor too short.



**We can estimate the material needed for such a detector using cross section of beta decay.** The meaning of cross section is almost the reaction rate divided by the initial flux, in more accurate language,

.. math::
   \sigma = \frac{\text{Reaction Rate} R }{ \text{Initla Flux} } \times \text{# of Final States}.



Reaction rate means number of reactions per unit time, which is what we need to calculate the required mass of detector. The reaction rate of capture on tritium is calculated using [1]_

.. math::
   R &= \sigma\times n_\nu \times v_\nu \\
   &= 1.8 \times 10^{-32} \frac{n_\nu}{\langle n_\nu \rangle} \mathrm{s}^{-1},

where :math:`\frac{n_\nu}{\langle n_\nu \rangle}` accounts for the fact that the number density of CNB neutrinos at the detector (Earth) might be larger than the average in the whole universe due to gravity of our galaxy or some other effects. We also used the cross section of neutrino capture on tritium :math:`\sigma=1.5\times 10^{-41}\frac{m_\nu}{1\mathrm{eV}} \mathrm{cm}^2`.

.. figure:: assets/cosmology/localEnhencementOfNeutrinoNumberDensity.png
   :align: center

   Local enhencement of neutrino number density. From `Formaggio's talk at int <http://www.int.washington.edu/talks/WorkShops/int_10_44W/People/Formaggio_J/Formaggio.pdf>`_

We estimate the reactions for tritium :math:`\mathrm{{}^3H}` mass :math:`m_t` during time :math:`t`,

.. math::
   N_R &= \frac{m_t}{\mu m_p} R t \\
   & = \frac{1\mathrm{kg}}{3 m_p} R \times 1\mathrm{year} \frac{m_t}{1\mathrm{kg}} \frac{t}{1\mathrm{year}}\\
   & = 6\times 10^{26} \times 1.8 \times 10^{-32} \frac{n_\nu}{\langle n_\nu \rangle} \mathrm{s}^{-1} \times 3\times 10^7 \mathrm{s} \frac{m_t}{1\mathrm{kg}} \frac{t}{1\mathrm{year}}


For tritium, the result is that :math:`100\mathrm{g}` will result in about 83 events per year if we use :math:`n_\nu/\langle n_\nu \rangle =10`.

So we need a detector of tritium mass of the order 100 gram or more.



**The problems, though, are also significant.**

1. Separate the CNB neutrino capture from the beta decay background requires a hell good of precision in energy detection. If the energy resolution is not enough to resolve a :math:`2m_\nu` energy difference, then the signal is hardly seperable.
2. Tritium molecules capture a neutrino and become a :math:`t He^3` which has rotational and vibrational energy about :math:`0.36\mathrm{eV}`. This will cause a restriction on the energy resolution.
3. Emitted electrons can be scattered by the tritium thus causing a energy redistribution.

.. admonition:: Other Background
   :class: note

   Solar neutrino of pp reaction is not a issue because the energy range 0eV to 10eV only has a neutrino number density :math:`10^6\mathrm{cm}^{-2} \mathrm{s}^{-1}`. This is less than 1 percent of the effective flux of CNB. [9]_

As for the resolution problem, we can estimate the requirement. [8]_

To calculate number the events in a energy interval, we only need to integrate the rate over the F-D distribution. The ratio of the events from captured CNB neutrino and events of beta decay is

.. math::
   \frac{N_\nu}{N_\beta} \sim \frac{n_\nu}{\Delta^3},

where :math:`\Delta` is the width of the resolution. The actual result is [1]_

.. math::
   \frac{N_\nu}{N_\beta} \sim 2.5\times 10^{-11} \times \frac{n_\nu}{\langle n_\nu \rangle} \times \frac{1}{ (\Delta/1\mathrm{eV})^3 }.

A more precise numerical calculation assuming mass of neutrino :math:`m_\nu=1\mathrm{eV}` and resolution :math:`\Delta = 0.5\mathrm{eV}` shows that we need at least a resolution that satisfies :math:`m_\nu/\Delta > 2` where :math:`n_\nu/\langle n_\nu \rangle = 50` is used. [9]_

.. figure:: assets/cosmology/energyResolutionAndSignal.png
   :align: center

   Seperation of signals for :math:`n_\nu/\langle n_\nu \rangle = 50`. From R. Lazauskas, P. Vogel and C. Volpe, J. Phys. G 35, 025001 (2008).


.. figure:: assets/cosmology/resolutionRequirement4DifferentMass.png
   :align: center

   For the signal strength :math:`N_\nu/N_\beta` to be 1, the relation of mass and resolution. From R. Lazauskas, P. Vogel and C. Volpe, J. Phys. G 35, 025001 (2008).




Refs & Notes
-----------------


.. [1] Vogel, P. (2015). How difficult it would be to detect cosmic neutrino background? (Vol. 025001, p. 140003). `doi:10.1063/1.4915587 <http://dx.doi.org/10.1063/1.4915587>`_ .
.. [2]  N. Cabibbo and L. Maiani, `The vanishing of order-G mechanical effects of cosmic massive neutrinos on bulk matter <http://www.sciencedirect.com/science/article/pii/0370269382901277>`_ Phys.Lett. B114, 115 (1982).
.. [3] P. Langacker, J. P. Leveille and J. Sheiman, `On the detection of cosmological neutrinos by coherent scattering <http://journals.aps.org/prd/abstract/10.1103/PhysRevD.27.1228>`_ Phys. Rev. D 27, 1228 (1983)
.. [4] L. Stodolsky, `Speculations on Detection of the "Neutrino Sea" <http://journals.aps.org/prl/abstract/10.1103/PhysRevLett.34.110>`_ Phys. Rev. Lett. 34, 110 (1975); (erratum) Phys. Rev. Lett. 34, 508 (1975).
.. [5] Lewis, R. R. (1980). Coherent detector for low-energy neutrinos. Physical Review D, 21(3), 663–668. doi:10.1103/PhysRevD.21.663.
.. [6] Weiler, T. (1982). Resonant Absorption of Cosmic-Ray Neutrinos by the Relic-Neutrino Background. Physical Review Letters, 49(3), 234–237. doi:10.1103/PhysRevLett.49.234
.. [7] `arXiv:1304.5632 [nucl-th] <http://arxiv.org/abs/1304.5632>`_ .
.. [8] A. G. Cocco, G. Magnano and M. Mesina, JCAP 0706, 015 (2007). 22.
.. [9] R. Lazauskas, P. Vogel and C. Volpe, J. Phys. G 35, 025001 (2008).
