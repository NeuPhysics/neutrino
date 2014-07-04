Oscillations - The Tranditional Way
============================



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




Neutrinos evolve in mass eigenstates. So we need to describe flavour states :math:`\ket{\nu_\alpha}` using mass eigenstates :math:`\ket{\nu_j}`.

.. math::
   \ket{\nu_\alpha} = \sum_j U^*_{\alpha j} \ket{\nu_j;\tilde p_j},

where :math:`U^*_{\alpha j}` is the element of neutrino mixing matrix.

In ultra relativistic case, we can simply find out the time evolution, which is equivalent to distance evolution,

.. math::
   \ket{\psi(t)} = \sum_j U^*_{\alpha j} G_j(t,t_0) \ket{\nu_j;\tilde p_j}.


The survival probability means how much neutrinos of a flavour left after some time or distance, which is calculated by

.. math::
   P(\nu_l\to\nu_{l'}) = \lvert \braket{\nu_{l'} }{\psi (t)}  \rvert^2 .

We can see clearly that the survival probability depends on some parameters.


Two Flavour Oscillation
~~~~~~~~~~~~~~~~~~~~~


To write down this clearly, we need to write down the mixing matrix and propagator. For simplicity, we calculate the example of two flavour (a, b) oscillation.

It's easier to write down the propagation in mass eiginstates so the first thing to work out is the mixing matrix.

Suppose we have only a flavour neutrino initially,

.. math::
   \ket{\psi(0)} = \ket{\nu_a}


Mixing Matrix
`````````````````````````````

The mixing matrix is an rotation of eigenbasis.

.. figure:: assets/nuetrinoMixingAngle.png
   :align: center
   :alt: Two Flavour Neutrino Mixing

   Two flavour neutrino mixing diagram with :math:`\theta` being the mixing angle

The flavour states can be expressed in terms of mass eigenstates,

.. math::
   \begin{pmatrix}\nu_a \\ \nu_b\end{pmatrix} = \begin{pmatrix}  \cos\theta  & \sin\theta \\ -\sin\theta  & \cos\theta \end{pmatrix}   \begin{pmatrix}\nu_1 \\ \nu_2\end{pmatrix}

where the matrix

.. math::
   \mathbf U = \begin{pmatrix}  \cos\theta  &  \sin\theta \\ -\sin\theta  & \cos\theta \end{pmatrix}

is the mixing matrix which is a rotation of basis geometrically. In other words, this matrix is the representation of the rotation :math:`e^{i\hat\theta}`.







Survival Probability
`````````````````````````````


With the mixing matrix, the propagation of an initial state of only flavour a is

.. math::
   \ket{\psi(t)} = \cos\theta \ket{\nu_1} e^{-i E_1 t} + \sin\theta \ket{\nu_2} e^{-i E_2 t} .


To find out the amplitude of flavour a, we need to project the state :math:`\ket{\psi(t)}` onto a flavour eigenstate, say, :math:`\ket{\nu_a}`,

.. math::
   \braket{\nu_a}{\psi(t)} & = \bra{\nu_a}\left( \cos\theta \ket{\nu_1} e^{-i E_1 t} + \sin\theta \ket{\nu_2} e^{-i E_2 t}\right) \\
   &= \left( \cos\theta \ket{\nu_1}  + \sin\theta \ket{\nu_2} \right) \left( \cos\theta \ket{\nu_1} e^{-i E_1 t} + \sin\theta \ket{\nu_2} e^{-i E_2 t}\right) \\
   & = \cos^2\theta e^{-iE_1t} + \sin^2\theta e^{-i E_2 t}

The survival probability is the amplitude squared,

.. math::
   P_{aa} & = \lvert \braket{\nu_a}{\psi(t)} \rvert ^2 \\
   & = \lvert \cos^2\theta e^{-iE_1t} + \sin^2\theta e^{-i E_2 t}  \rvert^2 \\
   & = \left( \cos^2\theta e^{-iE_1t} + \sin^2\theta e^{-i E_2 t}  \right)^* \left( \cos^2\theta e^{-iE_1t} + \sin^2\theta e^{-i E_2 t}  \right) \\
   & = \cos^4\theta + \sin^4\theta + \cos^2\theta\sin^2\theta e^{i(E_1-E_2)t}+ \sin^2\theta\cos^2\theta e^{-i(E_1-E_2)t} \\
   & = \cos^4\theta + \sin^4\theta + \cos^2\theta\sin^2\theta e^{i\Delta E t}+ \sin^2\theta\cos^2\theta e^{-i\Delta E t} \\
   & = \cos^4\theta + \sin^4\theta + 2 \cos^2\theta\sin^2\theta \cos(\Delta E t) \\
   & = (\cos^2\theta +\sin^2\theta)^2 - 2\cos^2\theta \sin^2\theta  + 2 \cos^2\theta\sin^2\theta \cos(\Delta E t) \\
   & = 1 - 2 \cos^2\theta \sin^2\theta (1 - \cos(\Delta E t)) \\
   & = 1 - \sin^2(2\theta) \sin^2\left( \frac{\Delta E t}{2} \right)

with the definition :math:`\Delta E =  E_1-E_2 \approx p_1 + \frac{1}{2}\frac{m_1^2}{p_1} - p_2 - \frac{1}{2}\frac{m_2^2}{p_2}`. We usually calculate the case :math:`p_1=p_2=p` , which takes us to

.. math::
   \Delta E & \approx \frac{m_1^2 - m_2^2}{2p} \\
   & = \frac{\delta^2 m}{2p} .

with :math:`\delta^2 m=m_1^2 - m_2^2`. Most of the time we would like to know the oscillation with respect to distance. Using the approximation :math:`t = L` and :math:`\Delta E \approx \frac{m_1^2 - m_2^2}{2p}`, we have

.. math::
   P_{aa} &= 1 - \sin^2(2\theta) \sin^2\left( \frac{\Delta E L}{2} \right) \\
   & = 1 -  \sin^2(2\theta) \sin^2\left( \frac{\delta^2m L}{4p} \right) .

This is the survival probability of flavour a neutrino with an initial state of flavour a.


There are several things to be noticed,

1. :math:`\theta=0` leads to oscillation free neutrinos.
2. :math:`\Delta E=0` or :math:`\delta ^2m =0` (in the case of same momentum) also gives us no oscillation.
3. At :math:`L=0` the survival probability is 1, which means no oscillation is done.



Hamiltonian
````````````````````

It's easy to write down the Hamiltonian for the mass state stationary Schrödinger equation. As we have proven, to first order approximation,

.. math::
   E = p + \frac{1}{2}\frac{m^2}{p}

.. math::
   \mathbf H_j &= \begin{pmatrix} p + \frac{1}{2}\frac{m_1^2}{p} & 0 \\ 0 & p + \frac{1}{2}\frac{m_2^2}{p} \end{pmatrix} \\
   & = p \mathbf I + \frac{1}{2p}\begin{pmatrix} m_1^2 & 0 \\ 0 & m_2^2 \end{pmatrix}

However, the Hamiltonian we prefer is the one for flavour eigenstates. To achieve this, we only need to rotate this previous Hamiltonian using the mixing matrix :math:`\mathbf U`.

.. math::
   \mathbf H_{\alpha} & = \mathbf U \hat H_j  \mathbf U^T \\
   & =  \begin{pmatrix}  \cos\theta & \sin\theta \\ -\sin\theta  & \cos\theta \end{pmatrix} \left( p \mathbf I + \frac{1}{2p}\begin{pmatrix} m_1^2 & 0 \\ 0 & m_2^2 \end{pmatrix} \right)   \begin{pmatrix}  \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix} \\
   & = p \mathbf I + \frac{1}{2p} \begin{pmatrix} \cos^2\theta m_1^2 + \sin^2\theta m_2^2 & -\sin\theta\cos\theta m_1^2 + \sin\theta\cos\theta m_2^2 \\ -\sin\theta\cos\theta m_1^2 + \sin\theta\cos\theta m_2^2 & \sin^2\theta m_1^2 + \cos^2\theta m_2^2 \end{pmatrix} \\
   & = p \mathbf I + \frac{1}{2p} \begin{pmatrix} m_1^2 - \delta^2 m \sin^2\theta & -\frac{1}{2}\sin 2\theta \delta^2m \\ -\frac{1}{2}\sin 2\theta \delta^2m & m_2^2+\delta^2m\sin^2\theta \end{pmatrix} \\
   & = p \mathbf I + \frac{1}{2p} \left( \frac{1}{2}(m_1^2+m_2^2) \mathbf I -   \frac{1}{2}\begin{pmatrix} -\delta^2m\cos 2\theta & \delta^2 m \sin 2\theta \\ \delta^2m\sin 2\theta & \delta^2 m\cos 2\theta \end{pmatrix} \right) \\
   & = \left(p + \frac{m_1^2+m_2^2}{4p} \right)\mathbf I - \frac{1}{4p}\begin{pmatrix} -\delta^2m\cos 2\theta & \delta^2 m \sin 2\theta \\ \delta^2m\sin 2\theta & \delta^2 m\cos 2\theta \end{pmatrix}

Again we see clearly, no oscillation will apear as long as mixing angle :math:`\theta=0` or :math:`\delta^2m=0`.


.. note::
   The reason we can do this is that this mixing matrix is time and space independent. To see this, we first write down the Schrödinger equation for mass eigenstates,

   .. math::
      i d_t \ket{\Phi_j} = \hat H_j \ket{\Phi_j}.

   Applying the mixing matrix,

   .. math::
      i d_t \mathbf U^{-1} \ket{\Phi_\alpha} = \hat H_j  \mathbf U^{-1} \ket{\Phi_\alpha}.

   Notice that the mixing matrix, which is a rotation, is orthonormal, :math:`\mathbf U \mathbf U^T=\mathbf I`. Then we have inverse of this matrix is the same as the transpose.

   .. math::
      i d_t \mathbf U^T \ket{\Phi_\alpha} = \hat H_j  \mathbf U^T \ket{\Phi_\alpha}.

   Multiply on both sides :math:`\mathbf U` and remember the fact that the mixing matrix is orthonormal, we have

   .. math::
      i d_t \ket{\Phi_\alpha} = \mathbf U \hat H_j  \mathbf U^T \ket{\Phi_\alpha}.

   Now we can define the Hamiltonian for flavour states,

   .. math::
      \mathbf H_{\alpha} = \mathbf U \mathbf H_j  \mathbf U^T .



Since Pauli matrices plus identity forms a complete basis for all 2 by 2 matrices, it our Hamiltonian can be written as

.. math::
   \mathbf H  &= \frac{\delta^2 m}{4E}\begin{pmatrix} -\cos 2\theta & \sin 2\theta \\ \sin 2\theta & \cos 2\theta \end{pmatrix} \\
   & = \frac{\delta^2 m}{4 E} \left( -\cos 2\theta \mathbf{\sigma_z} + \sin 2\theta \mathbf{\sigma_x} \right).


.. note::
   Pauli matrices are

   .. math::
      \sigma_x = \begin{pmatrix}0 & 1 \\ 1 & 0\end{pmatrix} \\
      \sigma_y = \begin{pmatrix}0 & -i \\ i & 0\end{pmatrix} \\
      \sigma_x = \begin{pmatrix}1 & 0 \\ 0 & -1\end{pmatrix}.


   In a more compact way,

   .. math::
      \sigma_j = \begin{pmatrix} \delta_{j3}&\delta_{j1}-i\delta_{j2}\\ \delta_{j1}+i\delta_{j2}&-\delta_{j3}\end{pmatrix}  .




MSW Effect
~~~~~~~~~~~~

Neutrinos do interact with matter, mostly electrons in most cases.

.. figure:: assets/nueNeutral.png

.. code:: tex

   \begin{fmfgraph*}(200,180)
     \fmfleft{i1,i2}
     \fmfright{o1,o2}
     \fmf{fermion}{i1,v1,o1}
     \fmf{fermion}{i2,v2,o2}
     \fmf{photon}{v1,v2}
     \fmflabel{$v_e$}{i2}
     \fmflabel{$e^-$}{i1}
     \fmflabel{$v_e$}{o2}
     \fmflabel{$e^-$}{o1}
     \fmf{photon,label=$Z$}{v1,v2}
   \end{fmfgraph*}


.. figure:: assets/nutaueNeutral.png



.. code:: tex

   \begin{fmfgraph*}(200,180)
    \fmfleft{i1,i2}
    \fmfright{o1,o2}
    \fmf{fermion}{i1,v1,o1}
    \fmf{fermion}{i2,v2,o2}
    \fmf{photon}{v1,v2}
    \fmflabel{$v_\tau$}{i2}
    \fmflabel{$e^-$}{i1}
    \fmflabel{$v_\tau$}{o2}
    \fmflabel{$e^-$}{o1}
    \fmf{photon,label=$Z$}{v1,v2}
   \end{fmfgraph*}



.. figure:: assets/nueCharged.png


.. code:: tex

   \begin{fmfgraph*}(200,180)
    \fmfleft{i1,i2}
    \fmfright{o1,o2}
    \fmf{fermion}{i1,v1,o1}
    \fmf{fermion}{i2,v2,o2}
    \fmf{photon}{v1,v2}
    \fmflabel{$v_e$}{i2}
    \fmflabel{$e^-$}{i1}
    \fmflabel{$v_e$}{o1}
    \fmflabel{$e^-$}{o2}
    \fmf{photon,label=$W^{-}$}{v1,v2}
   \end{fmfgraph*}


The one that is missing is the charged current for :math:`nu_\tau` and :math:`e^{-}` interaction because of lepton number conservation.

The first two diagrams will add two equal terms on the diagonal terms of Hamiltonian, which can be viewed as adding a number times identity matrix thus conserves the eigenstates while shifts the eigenvalues. However, the third diagram will only add a term to the first diagonal term of Hamiltonian, which is the weak coupling :math:`\Delta = \sqrt{2}G_F n(x)` with :math:`n(x)` being the number density of electrons.

.. admonition:: Weak Interaction
   :class: note

   We can guess this interaction term using physics picture. This interaction should be proportional to density of electrons with a coupling constant :math:`G_F`. Then check the dimensions.

   .. math::
      [G_F] &= [E]^{-2} \\
      [n(x)] & = [E]^3

   So the dimension is right. The missing constant is :math:`\sqrt{2}`.



This symmetry breaking will change the evolution and makes the states more electron neutrino.

This is the reason of MSW effect.

The MSW effect itself can be made clear using the example of neutrino oscillations in our sun.


.. admonition:: Small Mixing Angle
   :class: note

   Take two flavour mixing as an example.

   .. math::
      \begin{pmatrix}\nu_e \\ \nu_x\end{pmatrix} = \begin{pmatrix}  \cos\theta & \sin\theta \\ -\sin\theta  & \cos\theta \end{pmatrix}   \begin{pmatrix}\nu_1 \\ \nu_2\end{pmatrix}

   In the small mixing angle limit,

   .. math::
      \begin{pmatrix}\nu_e \\ \nu_x\end{pmatrix} \to \begin{pmatrix}  1 & \theta \\ -\theta  & 1 \end{pmatrix}   \begin{pmatrix}\nu_1 \\ \nu_2\end{pmatrix}

   which is very close to an identity matrix. This implies that electron neutrino is more like mass eigenstate :math:`nu_1`. By :math:`nu_1` we mean the state with energy :math:`\frac{delta^2m}{4E}` in vacuum.

   We need this intuitive picture to understand MSW effect. Electron neutrinos are almost identical to the low mass neutrino mass eigenstate. **However, as we will see, due to the matter interaction, the electron flavour neutrino is corresponding to the HEAVY mass eigenstate.** This is the key idea in physics of MSW effect.


The Hamiltonian for neutinos with neutrino-matter interaction (in flavour basis) is

.. math::
   \mathbf H = \frac{\delta^2m}{4E}\begin{pmatrix} -\cos 2\theta & \sin 2\theta \\ \sin 2\theta & \cos 2\theta \end{pmatrix}  {\color{red} + \frac{\Delta}{2} \mathbf {\sigma_3}}  {\color{green}+ \Delta \mathbf I},

where the last term (green part) can be neglected because this term will only shift all the eigenvalues with the same amount without changing the eigenvectors.

.. note::
   As a reminder, :math:`\Delta = \sqrt{2}G_F n(x)`.


.. note::
   The red part is from the charged current Feynman diagram. We have a :math:`\mathbf\sigma_3` matrix instead of an matrix like

   .. math::
      \begin{pmatrix}1 & 0 \\ 0 & 0 \end{pmatrix}

   because we rewrite this matrix with Pauli matrices and identy. Then the identities are neglected.

   This can be done properly because Pauli matrice and Identy matrix form a complete basis.

In a more compact form, this Hamiltonian is

.. math::
   \mathbf H &= \frac{\delta^2m}{4E} \left( -\cos 2\theta \mathbf {\sigma_3 } + \sin 2\theta \mathbf{\sigma_1} \right)  {\color{red} + \frac{\Delta}{2} \mathbf {\sigma_3}} \\
   & = \left(\frac{\Delta}{2} -\frac{\delta^2m}{4E} \cos 2\theta\right) \mathbf {\sigma_3 } + \frac{\delta^2m}{4E} \sin 2\theta \mathbf{\sigma_1}

.. note::
   Eigenvalues of :math:`\mathbf {\sigma_3}` are 1 and -1 with corresponding eigenvectors

   .. math::
      \begin{pmatrix}1\\ 0 \end{pmatrix}

   and

   .. math::
      \begin{pmatrix}0\\ 1 \end{pmatrix}.

As we have mentioned, this Hamiltonian is in flavour basis. When mixing angle :math:`\theta \to 0`, the eigenvectors are almost eigenvectors of :math:`\mathbf{\sigma_3}` which are electron neutrinos and x type neutrinos.


.. admonition:: Interesting Limits
   :class: note

   Before we really solve the equation of motion, some interesting limits can be shown here.

   **Interaction** :math:`\Delta` **is much larger than cacuum mixing terms.** In this case, the Hamiltonian becomes diagonalized and the neutrinos will stay on it's flavour eigenstates in the propagation.

   **Interaction** :math:`\Delta` **is much smaller than vacuum mixing terms.** The propagation reduces to vacuum case.




To see this effect quantitively, we need to diagonalize this Hamiltonian (**Can we actually diagonalize the equation of motion? NO!**). Equivalently, we can rewrite it in the basis of mass eigenstates :math:`\{\ket{\nu_L(x)}, \ket{\nu_H(x)}\}`,

.. math::
   \ket{\nu_L(x)} &= \cos\theta(x) \ket{\nu_e} - \sin\theta(x) \ket{\nu_\mu} \\
   \ket{\nu_H(x)} & =  \sin\theta(x) \ket{\nu_e} - \cos\theta(x) \ket{\nu_\mu}.

This new rotation in matrix form is

.. math::
   \begin{pmatrix} \ket{\nu_L(x)} \\ \ket{\nu_H(x)} \end{pmatrix} &= \begin{pmatrix} \cos \theta(x) & -\sin\theta(x) \\ \sin\theta(x) & \cos\theta(x) \end{pmatrix} \begin{pmatrix}\ket{\nu_e} \\ \ket{\nu_x} \end{pmatrix} \\
   & = \mathbf{U^{-1}_x } \begin{pmatrix}\ket{\nu_e} \\ \ket{\nu_x} \end{pmatrix}

.. admonition:: Diagonalize Hamiltonian
   :class: note

   To diagonilize it, we need to multiply on both sides the rotation matrix and its inverse,

   .. math::
      \mathbf {H_{xd}} = \mathbf{U_x^{-1}} \mathbf H \mathbf {U_x}.

   The second step is to set the off diagonal elements to zero. By solving the equaions we can find the :math:`\sin 2\theta(x)` and :math:`\cos 2\theta(x)`.

   .. math::
      \mathbf{H_{xd}} &= \mathbf{U^{-1}_x} \left( A_1 \mathbf{\sigma_1} + A_3 \mathbf{\sigma_3} \right) \\
      & = \begin{pmatrix} A_3\cos 2\theta(x) - A_1 \sin 2\theta(x) & A_3 \sin 2\theta(x) + A_1 \cos 2\theta(x) \\ A_3 \sin 2\theta(x) + A_1\cos 2\theta(x) &  - A_3 \cos 2\theta(x) + A_1 \sin 2\theta(x) \end{pmatrix},

   where

   .. math::
      A_3 &  = \frac{\Delta}{2} - \frac{\delta^2 m}{4E}\cos 2\theta \\
      A_1 & =  \frac{\delta^2 m}{4E} \sin 2\theta.

   Set the off-diagonal elements to zero,

   .. math::
      A_3 \sin 2\theta(x) + A_1 \cos 2\theta(x)  = 0

   So the solutions are

   .. math::
      \sin 2\theta(x) & = \frac{A_1}{\sqrt{A_1^2 + A_3^2}} \\
      \cos 2\theta(x) & = \frac{-A_3}{\sqrt{A_1^2+A_3^2}}.

   **This diagonalize the Hamiltonian LOCALLY. It's not possible to diagonalize the Hamiltonian globally if the electron number density is not a constant.**

   **The point is, for equation of motion, we have a differential with respect to position** :math:`x`! **So even we diagonalize the Hamiltonian, the equation of motion won't be diagonalized. An extra matrix will occur on the LHS and de-diagonalize the Hamiltonian on RHS.**


.. note::
   As :math:`\Delta \to \infty`, :math:`A_3\to \infty` and :math:`\sin 2\theta(x)` vanishes. Thus the neutrino will stay on flavour eigenstates.

With the newly defined heavy-light mass eigenstates, we can calculate the propagatioin of neutrinos,

.. math::
   i \hbar \partial_t \ket{\psi_x(t)} = \mathbf{Extra Matrix From LHS} \mathbf H_{xd} \ket{\psi_x(t)}.

We imediately know the propagation is on the heavy-light mass eigenstates under adiabatic condition WITHOUT solving the equation. The eigenvalue of these states are :math:`-\sqrt{A_3^2+A_1^2}` and :math:`\sqrt{A_3^2+A_1^2}`. The absolute value of these solutions grow as :math:`\Delta` becomes large.


.. admonition:: Is Adabatic Condition Valid Here?
   :class: note

   Haxton's paper.


From the two solutions we know there is a gap between the two trajectories. We draw a figure with electron number density as the horizontal axis and energy as the vertical axis.


.. image:: assets/msw.png
   :align: center













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
