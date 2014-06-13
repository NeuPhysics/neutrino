Oscillations
==============



Evidence of Oscillations
---------------------------


A lot of experiments have been done to research on neutrino oscillations. In summary there are three types,

1. Solar neutrinos,
2. Reactor and accelerator neutrinos,
3. Atmospheric neutrinos.


Results of Experiments
~~~~~~~~~~~~~~~~~~~~~~~~~


1. Difference between masses from data

   .. math::
      \frac{\lvert \Delta m_{21}^2 \rvert}{\lvert \Delta m_{31(32)}^2 \rvert} \approx 0.03 .

   We also have

   .. math::
      \lvert\Delta m_{21}^2 \rvert \ll \lvert \Delta m_{31(32)}^2 \rvert.

   By some convention, people would use numbers so that :math:`\Delta m_{21}^2 > 0` or :math:`m_1 < m_2`.






Theory
-------------


The Mixing Matrix
~~~~~~~~~~~~~~~~~~~


Neutrinos evolve in mass eigenstates. So we need to describe flavour states :math:`\ket{\nu_\alpha}` using mass eigenstates :math:`\ket{\nu_j}`.

.. math::
   \ket{\nu_\alpha} = \sum_j U^*_{\alpha j} \ket{\nu_j;\tilde p_j},

where :math:`U^*_{\alpha j}` is the element of neutrino mixing matrix.

In ultra relativistic case, we can simply find out the time evolution, which is equivalent to distance evolution,

.. math::
   \ket{\psi(t)} = \sum_j U^*_{\alpha j} G_j(t,t_0) \ket{\nu_j;\tilde p_j}.

The survival probability is

.. math::
   P(\nu_l\to\nu_{l'}) = \lvert \braket{\nu_{l'} }{\psi (t)}  \rvert^2 .

We can see clearly that the survival probability depends on some parameters.






Q&A
-----


.. admonition:: Question
   :class: warning

   What are some of the conventions used in liturature?

.. admonition:: Answer
   :class: note

   1. :math:`\Delta m^2_{ij}=m_i^2-m_j^2`.
   2. Flavours of left hand neutrinos are mixing of mass eigen states, :math:`\nu_{lL}=\sum_{j=1}^3 U_{lj}\nu_{jL}(x)`.



.. admonition:: Question
   :class: warning

   Why can we use just quantum mechanics on relativistic neutrinos? In principle one should use quantum field theory or at least relativistic quantum mechanics?


.. admonition:: Answer
   :class: note

   To be answered.





.. admonition:: Question
   :class: warning

   What does the mixing angle mean exactly both in vacuum and matter environment?


.. admonition:: Answer
   :class: note

   There are several ways to illustrate this.

   1. **Rotation angle** in flavour space. For simplicity I use a two component neutrino model.

   .. math::
      \ket{\nu_1} &= \cos\theta \ket{\nu_e} + \sin \theta \ket{\nu_\mu} \\
      \ket{\nu_2} & = -\sin\theta \ket{\nu_e} + \cos\theta \ket{\nu_\mu}

   This is a rotation in a plane with a generator :math:`e^{-i\hat \theta}`. **(Make a figure for this.) + (Write down the 3 components model.)**

   2. **Oscillation probability** involves this angle too. It is a suppression of the oscillation probability.

   3. From the view of **quantum states**, this angle determines how the flavour states are composed with mass eigenstates, i.e., the fraction or probability of each mass eiginstates in a flavour state.





.. admonition:: Question
   :class: warning

   What does wave packet in neutrino oscillation mean?


.. admonition:: Answer
   :class: note

   To Be Answered.


.. admonition:: Question
   :class: warning

   How would a wave packet spread?


.. admonition:: Answer
   :class: note

   A Gaussian wave packet would spread or shrink. The key of this spreading or shrinking is the dispersion relation.

   For **non-relativistic** Gaussian wave packet :math:`\psi(x,t) = e^{-\alpha(k-k_0)^2}` in momentum basis with dispersion relation :math:`\hbar\omega = \frac{\hbar^2 k^2}{2m}`, the expansion of packet is

   .. math::
      \Delta x= \sqrt{\alpha^2+\left(\frac{\hbar t}{2m}\right)^2} .

   Obviously, the RMS width spreads according to group velocity :math:`v_g = \hbar _0/m`.

   **However, the situation could be different for a relativistic neutrino.**




.. admonition:: Question
   :class: warning

   What will scattering do to a wave packet.



.. admonition:: Answer
   :class: note

   **Momentum transfer** for a plan wave case in Born approximation is



Determine :math:`\vert\Delta m^2\vert` and :math:`\theta`
----------------------------------------------------------------------

Atmospheric Results
~~~~~~~~~~~~~~~~~~~~

Accelerator Results
~~~~~~~~~~~~~~~~~~~~~

Reactor Results
~~~~~~~~~~~~~~~~~~~~~








.
