.. index:: MSW effect

MSW Effect
===================


.. admonition:: Brief Summary of MSW Resonance
   :class: note

   The Hamiltonian for matter effect is

   .. math::
      \mathbf H(x) = \left(\frac{\lambda(x)}{2} -\frac{ \omega_{\mathrm{v}} }{2} \cos 2\theta_{\mathrm{v}}\right) \boldsymbol {\sigma_3 } + \frac{ \omega_{\mathrm{v}} }{2} \sin 2\theta_{\mathrm{v}} \boldsymbol{\sigma_1},

   where :math:`\lambda(x)=\sqrt{2}G_F n_e(x)` is the matter potential and :math:`\omega_{\mathrm{v}}=\frac{\Delta m^2}{2E}` is the vacuum oscillation angular frequency. MSW resonance happens when the diagonal terms disappear, i.e.,

   .. math::
      \lambda = \omega_{\mathrm{v}} \cos 2\theta_{\mathrm{v}}.

   What does it mean?

   Now think about the vacuum Hamiltonian in **flavor basis**,

   .. math::
      \mathbf{H}_{\mathrm{vacuum}} = -\frac{\omega_{\mathrm{v}} \cos 2\theta_\mathrm{v}}{2}\boldsymbol{\sigma_3} + \frac{\omega_{\mathrm{v}} \sin 2\theta_\mathrm{v}}{2}\boldsymbol{\sigma_1}.

   We actually spot this similarity between matter Hamiltonian and vacuum Hamiltonian. Thus we define new oscillation frequency :math:`\omega_{\mathrm{m}}` and mixing angle :math:`\theta_{\mathrm{m}}`,

   .. math::
      \omega_{\mathrm{m}} &= \omega_{\mathrm{v}}\sqrt{ (\frac{\lambda}{\omega_{\mathrm{v}}} - \cos^2 2\theta_{\mathrm{v}})^2 + \sin^2 2\theta_{\mathrm{v}}  },
      \tan 2\theta_{\mathrm{m}} & = \frac{\sin 2\theta_{\mathrm{v}} }{ \cos 2\theta_{\mathrm{v}} - ( \lambda/\omega_{\mathrm{v}} )^2   },

   so that the Hamiltonian has the form

   .. math::
      \mathbf{H}(x) = -\frac{\omega_{\mathrm{m}} \cos 2 \theta_{\mathrm{m}}}{2} \boldsymbol{\sigma_3} + \frac{ \omega_{\mathrm{m}} \sin 2\theta_{\mathrm{m}} }{2} \boldsymbol{\sigma_1}.

   What are the significances of :math:`\theta_{\mathrm{m}}` and :math:`\omega_{\mathrm{m}}`? We can look at them in constant matter profile, which means they are constant. In such a case we can find a basis in which the Hamiltonian is diagonalized.

   .. math::
      \mathbf{H}_{\mathrm{diagonalized}} = - \frac{\omega_{\mathrm{m}}}{2}\boldsymbol{\sigma_3}.

   So :math:`\omega_{\mathrm{m}}` is the oscillation frequency in matter. **However, a caveat is that Hamiltonian with matter interaction is not always diagonalizable. Noneless, we know for constant matter profile and adiabatic approximation, diagonalizing the Hamiltonian is doable.**

   So the condition for MSW resonance also minimizes the oscillation angular frequency in matter.

   This basis, which we call matter basis :math:`\{\ket{\nu_{\mathrm{L}}}, \ket{\nu_{\mathrm{H}}}\}`, is related to flavor basis through this rotation,

   .. math::
      \begin{pmatrix}
      \ket{\nu_{\mathrm{e}}} \\
      \ket{\nu_{\mathrm{x}}}
      \end{pmatrix} = \begin{pmatrix}
      \cos \theta_{\mathrm{m}} & \sin \theta_{\mathrm{m}} \\
      -\sin \theta_{\mathrm{m}} & \cos \theta_{\mathrm{m}}
      \end{pmatrix}
      \begin{pmatrix}
      \ket{\nu_{\mathrm{L}}}\\
      \ket{\nu_{\mathrm{H}}}
      \end{pmatrix}.

   An investigation into the effective mixing angles in matter :math:`\theta_{\mathrm{m}}` shows that resonance condition also maximizes the :math:`\sin 2\theta_m`. The reason is that :math:`\lambda(x) - \omega_{\mathrm{v}} \cos 2\theta_{\mathrm{v}}  =0` will make :math:`\tan 2\theta_{\mathrm{m}}` infinity. Then we have :math:`2\theta_{\mathrm{m}}=\frac{\pi}{2}` which means :math:`\sin 2\theta_{\mathrm{m}} = 1`.

   We also notice :math:`\theta_{\mathrm{m}}=\frac{\pi}{4}` will also lead to equal mixing, i.e., electron flavor state consists of equal fraction of light state and heavy state.

   **In summary, the MSW resonance happens when**

   * diagonal elements of Hamiltonian in flavor basis vanish;
   * energy split between heavy and light states is minimized;
   * flavor oscillation (angular) frequency is minimized or oscillation length is maximized;
   * mixing angle in matter :math:`\theta_{\mathrm{m}}=\frac{\pi}{4}`;
   * equal mixing happens;
   * :math:`\sin 2\theta_m` is maximized which means the oscillation amplitude happens.

   There are more about MSW effect, which is related to non-adiabatic conversion. Read the main text for more information.



An Introduction to MSW Effect
------------------------------------------

First of all, MSW means Mikheyev–Smirnov–Wolfenstein.

The symmetry breaking between neutral current and charged current will change the evolution and makes the states more electron neutrino.

This is the reason of MSW effect.

In other words, the first requirement of MSW effect is that the electrons interacts with neutrinos and makes it in a specific state that is heavy if the electron density is strong enough. Meanwhile, if the mixing angle is not that large, a level crossing could happen making the state a light state as the density becomes vacuum. The other requirement, which is obvious, is that the density change should be adiabatic, the meaning of which is the density profile of matter gently reduces to vacuum, leaving enough reaction time for the neutrinos.


The Hamiltonian for neutinos with neutrino-matter interaction (in flavour basis) is

.. math::
   \mathbf H = \frac{ \Delta m^2 }{4E}\begin{pmatrix} -\cos 2\theta & \sin 2\theta \\ \sin 2\theta & \cos 2\theta \end{pmatrix}  {\color{red} + \frac{\Delta}{2} \mathbf {\sigma_3}}  {\color{green}+ \Delta \mathbf I},

where the last term (green part) can be neglected because this term will only shift all the eigenvalues with the same amount without changing the eigenvectors.

Define a quantities like :math:`\omega=\frac{ \Delta m^2 }{2E}` for neutrinos ( :math:`\bar\omega = \frac{ \Delta m^2 }{-2E}` for antineutrinos) and :math:`\Delta = \sqrt{2} G_F n(x)` (which might be denoted by :math:`\nu = \sqrt{2}G_F n_\nu` in other lituratures).


Using Pauli matrices, I can decompose this to

.. math::
   \mathbf H = \frac{\omega}{2}( -\cos2\theta \sigma_3 + \sin 2\theta \sigma_1 )   {\color{red} + \frac{\Delta}{2} \mathbf {\sigma_3}}  {\color{green}+ \Delta \mathbf I}

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
   \mathbf H &= \frac{ \Delta m^2 }{4E} \left( -\cos 2\theta \mathbf {\sigma_3 } + \sin 2\theta \mathbf{\sigma_1} \right)  {\color{red} + \frac{\Delta}{2} \mathbf {\sigma_3}} \\
   & = \left(\frac{\Delta}{2} -\frac{ \Delta m^2 }{4E} \cos 2\theta\right) \mathbf {\sigma_3 } + \frac{ \Delta m^2 }{4E} \sin 2\theta \mathbf{\sigma_1}

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
      \mathbf{H_{xd}} &= \mathbf{U^{-1}_x} \left( A_1 \mathbf{\sigma_1} + A_3 \mathbf{\sigma_3} \right) \mathbf{ U_x } \\
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


   Plug in :math:`A_1` and :math:`A_3`

   .. math::
      \sin 2\theta(x)  &= \frac{\sin 2\theta_v}{\sqrt{ \left(\frac{\Delta}{\omega} \right)^2+1 - 2 \frac{\Delta}{\omega}\cos 2\theta_v }} \\
      \cos 2\theta(x)&= \frac{ \cos 2\theta_v - \frac{\Delta}{\omega} }{ \sqrt{ \left( \frac{\Delta}{\omega} \right)^2  +1 - 2 \frac{\Delta}{\omega}\cos 2\theta_v  }}.

   Define :math:`\hat\Delta = \frac{\Delta}{\omega}` with :math:`\omega=\frac{\Delta m^2}{2E}`, which represents the matter interaction strength compared to the vacuum oscillation.

   .. math::
      \sin 2\theta(x)  &= \frac{\sin 2\theta_v}{\sqrt{ \hat\Delta ^2+1 - 2 \hat\Delta \cos 2\theta_v }} \\
      \cos 2\theta(x)&= \frac{ \cos 2\theta_v - \hat\Delta  }{ \sqrt{\hat\Delta ^2  +1 - 2 \hat\Delta \cos 2\theta_v } }.

   We also have

   .. math::
      A_3\cos 2\theta(x) - A_1 \sin 2\theta(x) = -\frac{\omega}{2}\sqrt{\hat \Delta^2 +1 - 2\hat\Delta \cos 2\theta_v},

   which leads to the result of the diagonalized Hamiltonian

   .. math::
      \mathbf{H_{xd}} = \frac{\omega}{2}\sqrt{\hat\Delta^2 +1 - 2\hat\Delta \cos 2\theta_v} \begin{pmatrix}
      -1 & 0 \\
      0 & 1
      \end{pmatrix}.


   **This diagonalize the Hamiltonian LOCALLY. It's not possible to diagonalize the Hamiltonian globally if the electron number density is not a constant.**

   **The point is, for equation of motion, we have a differentiation with respect to position** :math:`x`! **So even we diagonalize the Hamiltonian, the equation of motion won't be diagonalized. An extra matrix will occur on the LHS and de-diagonalize the Hamiltonian on RHS.**


.. note::
   As :math:`\Delta \to \infty`, :math:`A_3\to \infty` and :math:`\sin 2\theta(x)` vanishes. Thus the neutrino will stay on flavour eigenstates.

With the newly defined heavy-light mass eigenstates, we can calculate the propagatioin of neutrinos,

.. math::
   i \partial_t \ket{\psi_x(t)} = \mathbf{Extra Matrix From LHS}\cdot \mathbf H_{xd} \ket{\psi_x(t)},

where the :math:`\mathbf{Extra Matrix From LHS}` comes from the fact that changing from flavor basis :math:`\Psi(x)` to heavy-light basis :math:`\Psi_m(x)` using :math:`\mathbf {U_m}`,

.. math::
   i\partial_x (\mathbf{U_m} \Psi_m(x)) = H ( \mathbf{U_m} \Psi_m(x) )

only returns

.. math::
   i\partial_x \Psi_m(x) = \mathbf{H_{md} } \Psi_m(x) - i \mathbf{U_m^{-1}} ( \partial_x \mathbf{U_m} ) \Psi_m(x).


We imediately know the propagation is on the heavy-light mass eigenstates under adiabatic condition WITHOUT solving the equation. The eigenvalue of these states are :math:`-\sqrt{A_3^2+A_1^2}` and :math:`\sqrt{A_3^2+A_1^2}`. The absolute value of these solutions grow as :math:`\Delta` becomes large.

Combining the two terms on RHS,

.. math::
   i\partial_x \Psi_m(x) = \mathbf{H_m} \Psi_m(x),

where

.. math::
   \mathbf{H_m} = \mathbf{H_{md}} - i \mathbf{U_m^{-1}} ( \partial_x \mathbf{ U_m } ).

The only part inside :math:`\mathbf{U_m(x)}` that is space dependent is the number density of the electrons :math:`n(x)`. **Thus we know immediately that the Hamiltonian is diagonalized if the number density is constant.**


.. admonition:: Is Adabatic Condition Valid Here?
   :class: note

   Haxton's paper.

   Before going into the system, here is a discussion of adiabatic in thermodynamics.








From the two solutions we know there is a gap between the two trajectories. We draw a figure with electron number density as the horizontal axis and energy as the vertical axis.


.. figure:: assets/matter/msw.png
   :align: center

   `Neutrino physics <http://scitation.aip.org/content/aapt/journal/ajp/68/1/10.1119/1.19368>`_ by Wick C. Haxton and Barry R. Holstein.



Solar Neutrinos and MSW Effect
------------------------------------------------------

The MSW effect itself can be made clear using the example of neutrino oscillations in our sun. In fact it is responsible for the missing solar neutrino problem.


.. admonition:: Small Mixing Angle Limit
   :class: note

   Just for fun.

   Take two flavour mixing as an example.

   .. math::
      \begin{pmatrix}\nu_e \\ \nu_x\end{pmatrix} = \begin{pmatrix}  \cos\theta & \sin\theta \\ -\sin\theta  & \cos\theta \end{pmatrix}   \begin{pmatrix}\nu_1 \\ \nu_2\end{pmatrix}

   In the small mixing angle limit,

   .. math::
      \begin{pmatrix}\nu_e \\ \nu_x\end{pmatrix} \to \begin{pmatrix}  1 & \theta \\ -\theta  & 1 \end{pmatrix}   \begin{pmatrix}\nu_1 \\ \nu_2\end{pmatrix}

   which is very close to an identity matrix. This implies that electron neutrino is more like mass eigenstate :math:`\nu_1`. By :math:`\nu_1` we mean the state with energy :math:`\frac{ \Delta m^2 }{4E}` in vacuum.

   We need this intuitive picture to understand MSW effect. Electron neutrinos are almost identical to the low mass neutrino mass eigenstate. **However, as we will see, due to the matter interaction, the electron flavour neutrino is corresponding to the HEAVY mass eigenstate.** This is the key idea in physics of MSW effect.



.. figure:: assets/matter/clorine-detector-solar-neutrinos.jpg
   :align: center

   Solar neutrino problem: chlorine detector (Homestake experiment) results and theory predictions. SNU: 1 event for :math:`10^{36}` target atoms per second. Source: `Kenneth R. Lang (2010) <https://ase.tufts.edu/cosmos/view_picture.asp?id=585>`_


.. figure:: assets/matter/msw-and-density.png
   :align: center

   MSW effect of solar neutrinos. This figure is adapted from Smirnov 2003.


Hamiltonian with matter effect is

.. math::
   \mathbf{H} = \frac{\lambda(x) - \omega_{\mathrm v} \cos 2\theta_{\mathrm v}}{2} \boldsymbol{\sigma_3} + \frac{ \omega_{\mathrm v} \sin 2\theta_{\mathrm v}}{2} \boldsymbol{\sigma_1}

and new basis is defined

.. math::
   \begin{pmatrix}
   \ket{\nu_{\mathrm{e}}} \\
   \ket{\nu_{\mu}}
   \end{pmatrix} =
   \begin{pmatrix}
   \cos\theta_{\mathrm m} & \sin\theta_{\mathrm m} \\
   -\sin\theta_{\mathrm m} & \cos\theta_{\mathrm m}
   \end{pmatrix}\begin{pmatrix}
   \ket{\nu_{\mathrm{L}}} \\
   \ket{\nu_{\mathrm{H}}}.
   \end{pmatrix}

Now we have two states in this matter basis, the heavy state and the light state. When we talk about adabatic propagation, we mean the system doesn't jump between these heave and light states.

In the figure, we have dense matter on the left while the matter desnity approaching vacuum on the right. Upper bar means the probability of finding the system to be in heavy state and the lower bar means in light state. As the matter profile doesn't change too fast, the system undergoes adiabatic propagation and the length of the bars doesn't change. For example, if the system starts with completely heavy state , it will always remain on heavy state.

Since almost all neutrinos produced in the sun are electron neutrinos, and electron flavor neutrinos experience a big potential, electron flavor almost means heavy state. So we have the system starts with a state that is mostly heavy state and it remains this way. However, during the propagation, heavy state is going to have less electron flavor until some point, we have equal mixing which is MSW resonance. As it approaches vacuum, we have only about 1/3 of the probability to find the neutrinos to be on electron flavor state.


If we discuss more about this phenomenon, we have situations such as not so large density.

.. figure:: assets/matter/msw_and_density.png
   :align: center

   MSW conversion for different matter profiles. Smirnov 2003.







Numerical Results
-----------------------------


2 Flavor Oscillation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The equation of motion in flavor basis is

.. math::
   i\partial_x \Psi_{mf}(x) = \mathbf{H_{mf}} \Psi_{mf}(x)


where

.. math::
   \mathbf{H_{mf}} =  \left(  \frac{\Delta}{2} -  \frac{\omega}{2} \cos 2\theta_v  \right) \boldsymbol{\sigma_3} + \frac{\omega}{2} \sin 2\theta_v \boldsymbol{\sigma_1}.


Writing down the dimensionless equation, we have

.. math::
   i \partial_{\hat x} \Psi_{mf} = \frac{R_S \omega}{2} ( (\hat\Delta - \cos 2\theta_v ) \boldsymbol{\sigma_3} + \sin 2\theta_v \boldsymbol{\sigma_1} )  \Psi_{mf} .


As for the data of the sun I use a simple exponential distribution. The data is also from the paper by Bahcall. The model using just exponential is not accurate however it is enough to make the point in MSW resonance. So I choose a solar model in which the core density is :math:`n(0) = 10^{-13}\mathrm{GeV}^{3}`. The distribution is

.. math::
   n =  10^{-13 - 4.3\hat x} \mathrm{GeV}^{3}.


The numerical results can be obtains by plugging this density profile into the differential equation solver.

.. figure:: assets/matter/numericalMSW-model-3.png
   :align: center

   Numerical results for electron flavor neutrino probability and the other flavor neutrino probability when the electron density profile is :math:`10^{-14 - 4.3\hat x} \mathrm{GeV}^{3}`.


.. figure:: assets/matter/numericalMSW-model-2flavor-minus13-1.png
   :align: center

   Number density profile :math:`n(\hat x) =  10^{-13 - 4.3\hat x}\mathrm{GeV^{3}}`.



Since we can easily predict the survival probability using simple theory. Here are some comparision. The following figures are for matter profile :math:`10^{-13-4.3\hat x}\mathrm{GeV^3}` and vacuum oscillation frequency :math:`\omega = 10^{-20} \mathrm{GeV}, 10^{-19} \mathrm{GeV},10^{-18} \mathrm{GeV},10^{-17} \mathrm{GeV}` respectively. As we can see that in this two flavor special case, the problem doesn't dependent on energy and mass difference independently but depends only on :math:`\omega=\frac{\Delta m^2}{2E}`. If we choose :math:`\Delta m^2=7.5\times 10^{-5}\mathrm{eV^2}`, the four figures are corresponding to energies :math:`7.5\mathrm{MeV},0.75\mathrm{MeV},7.5\times 10^{-2}\mathrm{MeV},7.5\times 10^{-3}\mathrm{MeV}`.

.. figure:: assets/matter/compThNu13-1.png
   :align: center

   The grey line is theoretical survival probability at :math:`\hat x = 1`. In this calculation the vacuum oscillation frequency is set to :math:`\omega = 10^{-20} \mathrm{GeV}`.

.. figure:: assets/matter/compThNu13-2.png
   :align: center

   The grey line is theoretical survival probability at :math:`\hat x = 1`. In this calculation the vacuum oscillation frequency is set to :math:`\omega = 10^{-19} \mathrm{GeV}`.



.. figure:: assets/matter/compThNu13-3.png
   :align: center

   The grey line is theoretical survival probability at :math:`\hat x = 1`. In this calculation the vacuum oscillation frequency is set to :math:`\omega = 10^{-18} \mathrm{GeV}`.



.. figure:: assets/matter/compThNu13-4.png
   :align: center

   The grey line is theoretical survival probability at :math:`\hat x = 1`. In this calculation the vacuum oscillation frequency is set to :math:`\omega = 10^{-17} \mathrm{GeV}`.




Three flavor Oscillations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Vacuum part of the Hamiltonian is

.. math::
   \mathbf{H_{mvv}} = \frac{1}{2E} \begin{pmatrix}
   m_1^2 & 0 & 0 \\
   0 & m_2^2 & 0 \\
   0 & 0 & m_3^2
   \end{pmatrix}.


The matter interaction in flavor basis is

.. math::
   \mathbf{V_{mf}} = \sqrt{2}G_F n \mathrm{diag}{1,0,0}.


Thus to work in vacuum mass eigenstates, we need a transformation

.. math::
   \mathbf{V_{mv}} = \mathbf{U^{-1}}\mathbf{V_{mf}} \mathbf{U}.


Then the Hamiltonian becomes

.. math::
   \mathbf{H_{m}} = \begin{pmatrix}
   \frac{m_1^2}{2E} + \Delta U_{e1}^2 & \Delta U_{e1} U_{e2} & \Delta U_{e1} U_{e3} \\
   \Delta U_{e2} U_{e1} & \frac{m_2^2}{2E} + \Delta U_{e2}^2 & \Delta U_{e2} U_{e3} \\
   \Delta U_{e3} U_{e1} & \Delta U_{e3} U_{e2} & \frac{m_3^2}{2E} + \Delta U_{e3}^2
   \end{pmatrix}


Trace of this Hamiltonian is :math:`\mathrm{Tr}(\mathbf{H_m}) = \frac{m_1^2+m_2^2+m_3^2}{2E}+\Delta`. To find the traceless part, we can use the relation [ohlsson2000]_

.. math::
   M = M_{traceless}+ \frac{1}{N} \mathrm{Tr}(M) I,


where :math:`N` is the rank.

The traceless part of Hamiltonian becomes

.. math::
   \mathbf{H_{m}} = \begin{pmatrix}
   \Delta U_{e1}^2 - \frac{1}{3}\Delta + \frac{1}{3}(\frac{m_1^2-m_2^2 + m_1^2-m_3^2}{2E}) & \Delta U_{e1}U_{e2} & \Delta U_{e1} U_{e3} \\
   \Delta U_{e2} U_{e1} & \Delta U_{e2}^2 -\frac{1}{3}\Delta + \frac{1}{3}\frac{m_2^2 - m_1^2+m_2^2-m_3^2}{2E} & \Delta U_{e2}U_{e3} \\
   \Delta U_{e1} U_{e3} & \Delta U_{e2} U_{e3} & \Delta U_{e3}^2 -\frac{1}{3} \Delta + \frac{1}{3} \frac{m_3^2 - m_1^2 + m_3^2-m_2^2 }{2E}
   \end{pmatrix}.


Define the following quantities where only two of them are linearly independent

.. math::
   \Delta m_{12}^2 & = m_2^2 - m_1^2 \\
   \Delta m_{23}^2 & = m_3^2 - m_2^2 \\
   \Delta m_{13}^2 & = m_3^2 - m_1^2.



We define an energy scale related to the radius of the sun

.. math::
   \epsilon_S = \frac{1}{R_S}.


The EoM can be written in a dimensionless manner,

.. math::
   i\partial_{\hat x} \Psi_{m} =  \begin{pmatrix}
   \tilde\Delta U_{e1}^2 - \frac{1}{3}\tilde\Delta + \frac{1}{3}(\frac{\Delta m_{12}^2 + \Delta m_{13}^2}{2E\epsilon_S}) & \tilde\Delta U_{e1}U_{e2} & \tilde\Delta U_{e1} U_{e3} \\
   \tilde\Delta U_{e2} U_{e1} & \tilde\Delta U_{e2}^2 -\frac{1}{3}\tilde\Delta + \frac{1}{3}\frac{\Delta m_{12}^2 + \Delta m_{23}^2}{2E\epsilon_S} & \tilde\Delta U_{e2}U_{e3} \\
   \tilde\Delta U_{e1} U_{e3} & \tilde\Delta U_{e2} U_{e3} & \tilde\Delta U_{e3}^2 -\frac{1}{3} \tilde\Delta + \frac{1}{3} \frac{\Delta m_{13}^2 + \Delta m_{23}^2 }{2E\epsilon_S}
   \end{pmatrix}\Psi_m ,


where :math:`\tilde\Delta = \Delta/\epsilon_S`.



The parameters for this calculation in units of :math:`GeV^{\mathrm{some power}}` are

.. math::
   n(x) &= 10^{-12 - 4.3 x} \\
   \epsilon_S &= 10^{-24}\\
   \tilde\Delta(x) &= \sqrt{2} G_F n(x)/\epsilon_S\\
   \Delta m _ {12}^2 &= 7.6\times 10^{-5}\times 10^{-18}\\
   \Delta m _ {13}^2 &= 2.3\times 10^{-3}\times 10^{-18}\\
   \Delta m _ {23}^2 &= \Delta m _ {13}^2 - \Delta m _ {12}^2\\
   E &= 10^{-3}


For these parameters there is only resonance for :math:`\Delta m_{13}^2+\Delta m_{23}^2`.

A quick check over the different energy scales.


1. Vacuum energy scales in normal hierarchy

   .. math::
      \omega_{12}&= \frac{\Delta m_{12}^2}{2E} = 3.8\times 10^{-20}\mathrm{GeV}\\
      \omega_{13}&= \frac{\Delta m_{13}^2}{2E} = 1.7\times 10^{-18}\mathrm{GeV}\\
      \omega_{23}&= \frac{\Delta m_{23}^2}{2E} \approx \omega_{13}

2. Matter related scale for density profile :math:`10^{-14-4.3\hat x}`

   .. math::
      \Delta_1 = 1.6\times 10^{-19-4.3\hat x}\in [1.6\times 10^{-23.3},1.6\times 10^{-19}]

3. Matter related scale for density profile :math:`10^{-13-4.3\hat x}`

   .. math::
      \Delta_1 = 1.6\times 10^{-18-4.3\hat x}\in [1.6\times 10^{-22.3},1.6\times 10^{-18}]



.. figure:: assets/matter/numericalMSW3Flavor-normalization.png
   :align: center

   Normalization factor as a function of distance.


.. figure:: assets/matter/numericalMSW3Flavor-probabilities.png
   :align: center

   Probability for each flavor of neutrinos.


Applying a number density function :math:`n(x) = 10^{-13 - 4.3 x}` to the system, the small scale oscillations are revived,

.. figure:: assets/matter/numericalMSW3Flavor-2-norm.png
   :align: center

   Normalization of the states for numerical 3 flavor oscillation in the sun with density profile :math:`10^{-13 - 4.3 x}`.

.. figure:: assets/matter/numericalMSW3Flavor-2-probability.png
   :align: center

   Numerical results for 3 flavor oscillation in the sun with density profile :math:`10^{-13 - 4.3 x}`.


.. figure:: assets/matter/numericalMSW3Flavor-minus13-Inst-Eigen-Energies.png
   :align: center

   Eigenenergies for density profile :math:`10^{-13 - 4.3 x}`.


.. figure:: assets/matter/numericalMSW3Flavor-vac-eigen-prob.png
   :align: center

   Survival probabilities for different vacuum mass eigenstates for 3 flavor oscillation in the sun with density profile :math:`10^{-13 - 4.3 x}`.



An interesting notion is the survival probability for the instantaneous eigenstates.


.. figure:: assets/matter/instanEigenstetes-minus13-Grid.png
   :align: center

   Probability for the instantaneous eigenstates for matter profile :math:`10^{-13 - 4.3 x}`.

Lower matter density will have less suppression on vacuum oscillations.

.. figure:: assets/matter/numericalMSW3Flavor-minus14matter.png
   :align: center

   Numerical results for 3 flavor oscillation in the sun with density profile :math:`10^{-14 - 4.3 x}`.


.. [ohlsson2000] Ohlsson, T., & Snellman, H. (1999). Three flavor neutrino oscillations in matter, 2768(2000), 25. doi:10.1063/1.533270



Ternary Diagram
~~~~~~~~~~~~~~~~~~~~~~~

High matter density suppresses the vacuum oscillations which is clearly shown on a ternary diagram.

.. figure:: assets/matter/ternary/mass-1.png
   :align: center

   Ternary diagram for MSW effect shows that the vacuum oscillations in this case is suppressed. Comparing this with the survival probability, the survival probability for electron neutrino drops to a value and the rapid oscillations start to show up. The drop is the movement in the ternary diagram from the right-bottom cornor to the tau neutrino axis. These rapid oscillations corresponds to the T-shaped tip at the other end of the line.


.. figure:: assets/matter/ternary/mass-1-scatter.png
   :align: center

   Ternary diagram for MSW effect with homogeneously descretized position :math:`x` with matter profile :math:`10^{-13-4.3x}\mathrm{GeV^3}`. We can see clearly that the system stays on the two ends to the line for a longer time that in the middle where the transition happens very quickly. This can also be seen in the survival probability plot.

.. .. figure:: assets/matter/ternary/matter-vac-eigen-e-1.png
..    :align: center
..
..    Ternary diagram for vacuum eigenstates.


.. figure:: assets/matter/ternary/matter-inst-eigen-e-1.png
   :align: center

   Ternary diagram for instantaneous eigenstates with matter profile :math:`10^{-13-4.3x}\mathrm{GeV^3}`. The system starts from almost the second instantaneous state then moves along the state that :math:`\nu_1=0`.



.. figure:: assets/matter/ternary/matter-inverted-1.png
   :align: center

   Ternary diagram for MSW effect with inverted hierarchy :math:`\Delta m_{23} = m_3^2 - m_2^2<0`. The shape changes a lot since the frequencies changes a lot.

Experiments
-----------------------

MSW effect is verified by serveral experiments, SNO, Borexino and many others.

.. figure:: assets/msw/msw-experiments.png
   :align: center

   Comparison of MSW prediction and experiments. The uncertainties of MSW prediction line are on on mixing angles. Figure from `Haxton et al 2013 <https://arxiv.org/abs/1208.5723>`_.


MSW Triangle
-----------------------


Finally, one of the interesting things about MSW effect is that we could find a triangle where the survival probability is low.

.. figure:: assets/msw/msw-triangle.png
   :align: center

   Code and illustration for the calculation can be downloaded on github https://github.com/NeuPhysics/codebase/blob/master/ipynb/matter/msw_triangle.ipynb .




Refs and Notes
---------------------

1. Wolfenstein, L. (1978). Neutrino oscillations in matter. Physical Review D, 17(9), 2369–2374. doi:10.1103/PhysRevD.17.2369
2. Wolfenstein, L. (1979). Neutrino oscillations and stellar collapse. Physical Review D, 20(10), 2634–2635. doi:10.1103/PhysRevD.20.2634
3. Parke, S. J. (1986). Nonadiabatic Level Crossing in Resonant Neutrino Oscillations. Physical Review Letters, 57(10), 1275–1278. doi:10.1103/PhysRevLett.57.1275
4. Bethe, H. A. (1986). Possible Explanation of the Solar-Neutrino Puzzle. Physical Review Letters, 56(12), 1305–1308. doi:10.1103/PhysRevLett.56.1305
