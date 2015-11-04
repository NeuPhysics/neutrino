How Do Neutrinos Propagate
===========================



.. admonition:: Question
   :class: warning

   How to interpret neutrino propagation and scattering using wave packet formalism?




In the book of *Principles of Quantum Mechanics*, Shankar shows how to deal with scattering using just wave packet.

What I can do is to check the following questions.

1. How do wave packet formalism help us understanding the scattering of neutrinos.
2. How do relativistic case change the results?
3. What if the packet is a combination of Gaussian packets?


.. index:: Wave Packet Treatment

Wave Packet Treatment
-----------------------


From uncertainty principle we know it's not good enough to treat neutrinos as mono-momentum particles because our measurement measures the momentum with an accuracy and the position of the neutrinos are not completely determined. We have both momentum width and position width which looks a lot like a wave packet.


The caveats are

1. What are the energies, momenta, velocities of neutrinos and the average of them?
2. How to find the amplitude of wave packet? What's the geometry of the wave packet?
3. The time evolution should reduce to the single particle formalism in some limits.

In principle we need all the information about the generation of neutrinos. However, we can use some unknown paramters to derive the formalism of the wave packets then investigate the unknown paramters.

A wave packet is constructed with a distribution of amplitude at each momentum and position and time.

.. note::
   A wave packet in wave dynamics is bunch of plane waves that makes a localized packet. For example one of the general form of wave packets is

   .. math::
      u(x,t) = \frac{1}{\sqrt{2\pi}} \int^{\,\infty}_{-\infty} A(k) ~ e^{i(kx-\omega(k)t)} \,dk .

   Basically, one needs a lot of frequencies/wavenumbers/momenta to construct some localized waves.


As an application of this general wave packet, we can write down the wave packet of neutrinos using an assumed initial distribution over all possible momenta. **The problem is that we have no idea what the amplitude should be.**


Some Questions
~~~~~~~~~~~~~~~

Some questions should be answered in this formalism.

1. What are :math:`\nu_f` and :math:`\nu_m` in this formalism?



.. admonition:: Question
   :class: warning

   What is :math:`\nu_f`, i.e., the flavour state, in the formalism of wave packet?


.. admonition:: Answer
   :class: note

   In the view of math, the flavour state is a superposition of all mass states,

   .. math::
      \psi(x,t) = \int_{lower}^{upper} dp_\nu' \sum_m U_{fm} a(p_\pi^m(p_\nu')) \nu_m e^{ip_\nu'x} e^{-i E_m(p_\nu')t}

   In other words, as long as we can measure the wave packet in a sense that the position difference is large enough, the wave packet still.


.. admonition:: Question
   :class: warning

   What does decoherence mean then?

.. admonition:: Answer
   :class: note

   An first idea can be that the wave packets of different mass eigen states are travelling at different speed thus they get very far apart after some travelling time.

   However we should be careful with the wave packet formalism. This treatment is infact an effective treatment in my understanding, to reconcile the fact that the neutrinos are actually not at a definite position and momentum state due to quantum uncertainty principle.

   So any discussion about the decoherence of the wave packets should make clear of the measurements including the production procedure.
















.
