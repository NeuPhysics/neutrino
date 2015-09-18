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

The neutrinos decouple when we have the rate are comparable, which is

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










Refs & Notes
-----------------


.. [1] Vogel, P. (2015). How difficult it would be to detect cosmic neutrino background? (Vol. 025001, p. 140003). `doi:10.1063/1.4915587 <http://dx.doi.org/10.1063/1.4915587>`_ .
.. [2]  N. Cabibbo and L. Maiani, `The vanishing of order-G mechanical effects of cosmic massive neutrinos on bulk matter <http://www.sciencedirect.com/science/article/pii/0370269382901277>`_ Phys.Lett. B114, 115 (1982).
.. [3] P. Langacker, J. P. Leveille and J. Sheiman, `On the detection of cosmological neutrinos by coherent scattering <http://journals.aps.org/prd/abstract/10.1103/PhysRevD.27.1228>`_ Phys. Rev. D 27, 1228 (1983)
.. [4] L. Stodolsky, `Speculations on Detection of the "Neutrino Sea" <http://journals.aps.org/prl/abstract/10.1103/PhysRevLett.34.110>`_ Phys. Rev. Lett. 34, 110 (1975); (erratum) Phys. Rev. Lett. 34, 508 (1975).
.. [5] Lewis, R. R. (1980). Coherent detector for low-energy neutrinos. Physical Review D, 21(3), 663–668. doi:10.1103/PhysRevD.21.663.
