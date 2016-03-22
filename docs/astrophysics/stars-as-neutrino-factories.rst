Stars as Neutrino Factories
=======================================



Here we review the physics of solar neutrinos, with neutrino production, neutrino flavor mixing which is modified by matter interactions and thermal motion of nuclei, and finally the neutrino energy spectra of different nuclear reactions. A simple analysis of supernova neutrino spectra shows that neutrino spectra for supernova are not well understood.




Neutrinos in Astrophysics
-------------------------------


Neutrinos and anti-neutrinos are particles produced in many nuclear reactions such as beta decays,

.. math::
   {}^A_Z X \to {}_{Z+1}^AX + e^- +\bar \nu_e .


In such reactions, charged current weak interaction plays a role which takes a down quark in neutron to a up quark while releasing electrons and anti-electron neutrino,

.. math::
   n\to p + e^- + \bar \nu_e .


.. _fig-Beta_Negative_Decay:

.. figure:: assets/stars-as-neutrino-factories/Beta_Negative_Decay.png
   :align: center

   Feynman diagram of beta decay. The charged current weak interaction boson in this case is a $W^-$. Credit: Joel Holdsworth, within public domain.



More generally, positron emission and electron capture are also neutrino related nuclear reactions which is explained in table :ref:`table:Neutrino_Reactions`. In the context of astrophysics, (anti-)neutrinos also participate in nuclear reaction chains in stars, synthesis of heavy and rare elements and more.


.. _table-Neutrino_Reactions:

.. figure:: assets/stars-as-neutrino-factories/neutrino-related-reactions.png
   :align: center

   Neutrino related nuclear or leptonic reactions.


.. admonition:: LaTeX Code for The Table
   :class: toggle

   .. code:: tex

      \begin{table}[ht]
      \centering
       \begin{tabular}{|c | c | c|}
       \hline
       Reaction & Equation & Boson   \\ [0.5ex]
       \hline
       Electron emission & ${}^A_Z X \to {}^A_{Z+1}X + e^- +\bar \nu_e$ & $W$  \\
       Positron emission & ${}^A_Z X \to {}^A_{Z-1}X + e^+ + \nu_e$ & $W$  \\
       Electron capture & ${}^A_Z X + e^- \to {}^A_{Z-1}X  + \nu_e$ &  $W$ \\
       Positron capture & ${}^A_Z X + e^+ \to {}^A_{Z+1}X  + \bar\nu_e$ &  $W$ \\
       [0.5ex]
       \hline

       Electron annihilation &  $e^- + e^+  \to \nu_e + \bar\nu_e $  & $W$ \\
       Electron annihilation &  $e^- + e^+  \to \nu + \bar\nu $  & $Z$ \\
       [0.5ex]
       \hline

        Neutrino capture & ${}^A_{Z}X + \overset{(-)}{\nu_e} \to {}^A_{Z\mp 1}X + e^\pm $ & W\\
        [1ex]
       \hline
       $e^-\nu$ scattering & $e^- + \overset{(-)}{\nu_e} \to e^- + \overset{(-)}{\nu_e} $ &  $W$ \\
       $e^-\nu$ scattering & $e^{\pm} + \overset{(-)}{\nu_e} \to e^{\pm} + \overset{(-)}{\nu_e} $ &  $Z$ \\
       Neutrino scattering & $ {}^A_Z X + \overset{(-)}{\nu} \to {}^A_Z X + \overset{(-)}{\nu} $ &  Z\\
       [0.5ex]
       \hline
       \end{tabular}
       \caption{Neutrino related nuclear or leptonic reactions}
      \end{table}


Astrophysical neutrino sources such as cores of stars, AGN, Gamma-ray bursts, and supernovae, reveals a lot of information about the sources. Though neutrinos are are weakly interacting particles thus rendering them hard to detect, it is an important subject to theoretically inspect neutrino productions in astrophysical processes.

One of the neutrino factories is the stellar core. Numerous nuclear reactions as well thermal neutrino production produce high number density neutrinos emissions. In this section, the nuclear reactions in stars are reviewed as well as the neutrino oscillation in the stars.



Nuclear Reactions in Sun and Neutrino Flux
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pp chain and CNO cycle are the most important nuclear reactions in a star. Through different stages of its life, a star experience different nuclear reactions. Figure :ref:`fig-pp_Chain_Branching` shows the dominant energy source of solar mass stars. In order to calculate the neutrino spectrum we need the neutrino production rate in each reaction and the branching ratios. The processes that emits neutrinos are the red reactions in Fig :ref:`fig-pp_Chain_Branching`, which explicitly are

.. math::
   \begin{align}
   &\mathrm{p+p\to {}^2H + e^+ +\nu_e},  & \mathrm{\leq 0.422MeV}\\
   &\mathrm{{}^7Be + e^- \to {}^7Li + \nu_e} , &\text{0.862MeV for 90\%}\\
   &&\qquad \text{0.384MeV for 10\%} \\
   &\mathrm{{}^8B \to {}^8Be^* +e^+ +\nu_e},  & \mathrm{\leq 15 MeV}
   \end{align}


.. _fig-pp_Chain_Branching:

.. figure:: assets/stars-as-neutrino-factories/pp-chain-branching.png
   :align: center

    pp chain with branching ratio1


.. admonition:: LaTeX Code for The Diagram
   :class: toggle

   .. code:: tex

      \begin {figure*}%[!hbtp]
      \centering
      \begin{adjustbox}{width=\textwidth}
      \begin{tikzpicture}[sibling distance=15em,
        every node/.style = {shape=rectangle,
          draw, align=center}
        edge from parent/.style = {draw, -latex},]]
        \node {\color{red}$\mathrm{p+p\to {}^2H + e^+ +\nu_e}$ }
          child { node {$\mathrm{p+{}^2H \to {}^3He + \gamma}$}
            child { node {$\mathrm{{}^3He+{}^3He \to {}^4 He + 2p }$}
                edge from parent node [left] {83.30\% (pp-I) } }
            child { node {$\mathrm{{}^3He+{}^4He \to {}^7 Be + \gamma }$}
              child { node {
      \color{red}$\mathrm{{}^7Be + e^- \to {}^7Li + \nu_e}$
              }
              child { node { $\mathrm{{}^7Li + p \to 2{}^4He }$} }
              edge from parent node [left] {99.88\% (pp-II) } }
              child { node { $\mathrm{{}^7 Be + p \to {}^8 B + \gamma}$}
              child { node { \color{red}$\mathrm{{}^8B \to {}^8Be^* +e^+ +\nu_e}$ }
      		child { node { $\mathrm{{}^8Be^* \to 2 {}^4He }$ } }}
              edge from parent node [right] {0.12\% (pp-III) } }
              edge from parent node [right] {16.70\%  } }};
      \end{tikzpicture}
      \end{adjustbox}
      \caption{ pp chain with branching ratio\cite{Altmann2001} }
      \end{figure*}




\begin{figure}[!hbtp]
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/cno_cycle.png}
\caption{CNO cycle illustration.\cite{Adelberger2011a}}
\label{fig:cno_cycle}
\end{figure}


Solar neutrinos are mostly produced in pp reaction, Be electron capture and B decay, which are called pp neutrinos, Be neutrinos and B neutrinos. Even without knowledge of the detailed reactions, the conservation of lepton numbers will lead to the overall neutrino production

\begin{equation}
\mathrm{4p+2e^- \to {}^4He + 2\nu_e },
\end{equation}

where it is important to notice that two neutrinos are produced in each reaction. This overall reaction can either be pp chain or CNO cycle.

Using this simple relation, we can estimate the neutrino flux emitted by our sun. Given the kinetic energy produced in each reaction is the difference between the initial masses and the final masses, $Q_{pp}=4m_p+2m_e-m_{He4}=26.7\mathrm{MeV}$ where the mass of neutrinos are neglected since they are small compared with every other particle. On average, each neutrino carries away $0.2\mathrm{MeV}$ energy and the rest will be mostly in the form of thermal energy $Q_\gamma=26.3\mathrm{MeV}$. Number flux of thermal photons near Earth can be calculated using the solar constant $S_0$,

\begin{equation}
\Phi_\gamma = \frac{S_0}{Q_\gamma}.
\end{equation}

Since we know each reaction produces 2 neutrinos while producing $Q_\gamma$, which means that the number flux of neutrinos near Earth is roughly twice of the number flux of photons, i.e.,

\begin{equation}
\Phi_\nu = 2 \Phi_\gamma \approx 6\times 10^{10} \mathrm{cm^{-2}s^{-1}}.
\end{equation}


For such a large flux, understanding the role in stellar nuclear reaction and spectra is important.

Inside our Sun, two additional reactions also produce neutrinos which are called pep and hep neutrinos.

\begin{itemize}
\item pep neutrinos are produced in
\begin{equation}
\mathrm{p + e^- + p \to {}^2H +\nu_e},
\end{equation}
which is only has a branching ratio 0.4\% instead of the 99.6\% of pp reaction.
\item hep neutrinos are produced in
\begin{equation}
\mathrm{ {}^3He + p \to {}^4He + e^+ \nu_e },
\end{equation}
which has a branching ratio of $2\times 10^{-5}\%$. As a comparison, the $\mathrm{{}^3He + {}^3He}$ has a branching ratio $85\%$ and $\mathrm{{}^3He + {}^4He}$ has a branching ratio $15\%$.

\end{itemize}













\subsection{Neutrino Oscillation}


Neutrinos are special particles that their flavor eigenstates are not the propagation eigenstates, which leads to neutrino flavor oscillations. Since neutrinos with different flavor interact with matter with different cross section, we need to investigate the neutrino flavor carefully. Even though only electron flavor neutrinos are produced, what we detect on Earth is different in flavor, which depends on two phenomena, neutrino vacuum oscillation and Mikheyev–Smirnov–Wolfenstein effect.

\subsubsection{Vacuum Oscillation}

To understand the neutrino vacuum oscillation phenomenon, we use two flavor neutrino as an example. In vacuum, propagation states are mass eigenstates, which is different from flavor eigenstates. The wave function in flavor eigenstates basis is related to wave function in mass eigenstates through an unitary matrix $\mathbf U$,

\begin{equation}
\Psi_f = \mathbb{U}_{\alpha i}\Psi_{v},
\end{equation}

where $\Psi_f$ is wave function in flavor basis and $\Psi_v$ is the wave function in vacuum mass eigenstate basis. The rotation matrix is

\begin{equation}
U = \begin{pmatrix} \cos\theta_v & \sin \theta_v \\ -\sin \theta_v & \cos \theta_v \end{pmatrix}.
\end{equation}

In vacuum basis, the Hamiltonian is free propagation, which is given by

\begin{equation}
H_v^{(v)} = \begin{pmatrix} E_1 & 0 \\
0 & E_2
\end{pmatrix},
\end{equation}

where

\begin{align}
E_i^{(v)} & = \sqrt{m_i^2 + p_i^2 } \\
& = p_i \sqrt{\frac{m_i^2}{p_i^2} + 1} \\
& \approx p_i + \frac{1}{2} \frac{m_i^2}{p_i}.
\end{align}

We assume the neutrinos have almost the same momentum, which is true since their mass is small, i.e., $p_i \approx E$. To first order, the Hamiltonian becomes

\begin{align*}
H_v^{(v)} &= \frac{1}{2E} \begin{pmatrix}
m_1^2 & 0 \\
0 & m_2^2
\end{pmatrix} + p \mathbb{I}\\
& =  \frac{1}{4E} \begin{pmatrix}
m_1^2 - m_2^2 & 0 \\
0 & m_2^2 - m_1^2
\end{pmatrix} \\
&\phantom{=}+ \frac{m_2^2 + m_1^2}{4E} \begin{pmatrix}
1 & 0 \\
0 & 1
\end{pmatrix} + \mathbf{I},
\end{align*}

where the identity matrices only give us an overall phase so we drop them. With the definition that $\Delta m^2 = m_2^2 - m_1^2$ The vacuum Hamiltonian in vacuum basis is simplify

\begin{equation}
H_v^{(v)} =  \frac{\Delta m^2}{4E} \begin{pmatrix}
-1 & 0 \\
0 & 1
\end{pmatrix},
\end{equation}

which leads to the simple solution for the wave function in vacuum basis

\begin{equation}
\Psi_v(t)^{(v)} = \begin{pmatrix}
c_1(0) e^{i\Delta m^2 t } \\
c_2(0) e^{ -i\Delta m^2 t }
\end{pmatrix},
\end{equation}

where the initial condition is

\begin{equation}
\Psi_v(0)^{(v)} = \begin{pmatrix}
c_1(0) \\
c_2(0)
\end{pmatrix}.
\end{equation}

In flavor basis, the wave function at anytime is

\begin{align}
\Psi_f(t) &= \mathbf{U}\Psi_v(t) \\
& = \begin{pmatrix} \cos\theta_v & \sin \theta_v \\ -\sin \theta_v & \cos \theta_v \end{pmatrix} \begin{pmatrix} c_1(0) e^{i\Delta m^2 t } \\
c_2(0) e^{ -i\Delta m^2 t }    \end{pmatrix} .
\end{align}

As seen in the nuclear reactions in the solar core, electron neutrinos are most abundant flavor. Initial condition is assumed to be electron flavor in the calculation which leads to the survival probability of electron flavor

\begin{equation}
P(\nu_e,t) = \Psi_f(0)^\dagger \Psi_f(t) = 1-\sin^2(2\theta_v)\sin^2\left( \frac{\Delta m^2 t}{4E} \right).
\end{equation}

Since neutrinos travel with velocity approximately the speed of light, we use $L = t$ where $L$ is the distance travelled. The survival probability is

\begin{equation}
P(\nu_e,L) =  1-\sin^2(2\theta_v)\sin^2\left( \frac{\Delta m^2 L}{4E} \right).
\end{equation}


The important parameter is the oscillation length of the neutrino flavor conversion. Here we have the oscillation frequency $\omega = \frac{\Delta m^2}{2E}$.

(Need a figure about the oscillation lengh here.)



\subsubsection{Mikheyev - Smirnov - Wolfenstein Effect}

The nature of neutrino oscillation means that flavor conversion occurs as long as their propagation eigenstates are not flavor eigenstates. We expect neutrino propagation eigenstates in matter are different from flavor states in general.\cite{wolf78} Using the fact that neutral current interactions between different flavor neutrinos and matter is independent of flavor, we only include the charged current, which will produce a effective potential for electron flavor. In flavor basis, the effective potential is

\begin{equation}
V=\frac{\sqrt{2}G_F n_e}{2} \sigma_3,
\end{equation}

where $G_F$ is Fermi constant, $n_e$ is number density of electrons. We also removed the identity in this matrix since it doesn't change our survival probability. The Hamiltonian with matter effect is the combination of vacuum oscillation and matter effect, which is, in flavor basis, explicitly,

\begin{equation}
H_m = \frac{ \Delta m^2 }{2E}\frac{1}{2}\begin{pmatrix} -\cos 2\theta_v & \sin 2 \theta_v \\ \sin 2\theta_v & \cos 2\theta_v  \end{pmatrix} + \frac{\sqrt{2}G_F n_e}{2} \sigma_3,
\end{equation}

where we used the result of flavor basis vacuum oscillation Hamiltonian

\begin{align}
H_v^{(f)}& = \mathbf{U} H_v^{(v)}\mathbf{U^\dagger} \\
&= \frac{ \Delta m^2 }{2E}\frac{1}{2}\begin{pmatrix} -\cos 2\theta_v & \sin 2 \theta_v \\ \sin 2\theta_v & \cos 2\theta_v  \end{pmatrix}.
\end{align}

Applying Pauli matrices and $\lambda = \frac{\sqrt{2}G_F n_e}{2}$ to this total Hamiltonian, it is rewritten as

\begin{equation}
H_m = \left(\frac{\lambda}{2} -\frac{ \omega }{2} \cos 2\theta_v \right) \boldsymbol{\sigma}_3  + \frac{ \omega }{2} \sin 2\theta_v \boldsymbol{\sigma}_1.
\end{equation}

Due to the off-diagonal terms in the Hamiltonian, the system will experience oscillations in flavor. A resonance, i.e., maximum mixing, dominates the system when the diagonal terms becomes zero,

\begin{equation}
\frac{\lambda}{2} -\frac{ \omega }{2} \cos 2\theta_v  = 0,
\end{equation}

which gives us the MSW resonance condition.

The importance of matter effect to our understanding of solar neutrinos is that it modifies the oscillation, which depends on the matter profile. For a solar mass star, we have almost adiabatic evolution of the neutrinos, which means that the instantaneous eigenstates and eigenvectors of Hamiltonian is good enough for the time dependent Schr\"{o}dinger equation.


For simplicity, we define the vacuum frequency and the hatted quantities

\begin{align}
\omega &= \frac{\Delta m^2}{2E} \\
\hat\lambda & = \frac{\lambda}{\omega}.
\end{align}

The eigenstates, derived by diagonalizing the Hamiltonian, are

\begin{align}
E_1 &= \frac{\omega}{2}\sqrt{ \hat\lambda +1 -  2\hat\lambda \cos 2\theta_v }\\
E_2 &= -\frac{\omega}{2}\sqrt{ \hat\lambda +1 -  2\hat\lambda \cos 2\theta_v }.
\end{align}


\begin{figure}
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/mswEnergyLevels.jpg}
\caption{The two energy levels in matter effect. The energy has unit $\omega/2$ while the potential has unit $\omega$.}
\label{fig:mswEnergyLevels}
\end{figure}

Figure \ref{fig:mswEnergyLevels} shows the two energy levels. For very high matter density, which interact with electron neutrinos more through charged current, electron flavor is composed almost with heavy propagation eigenstate. However, as the matter density becomes lower, the heavy propagation state will be gradually transformed to the other flavors since electron flavor in vacuum is composed mostly the light mass state. The resonance, which is the closest point of energy levels, happens at density $n_e……　 = 2\omega \cos(2\theta_v)/\sqrt{2}G_F$ which depends on $\omega = \Delta m^2/2E$. Neutrinos with different energies have different resonance, which will significantly reshape the neutrino spectra for different flavors. More explicitly, the conversion of flavor is shown in
Figure \ref{fig:msw_and_density} which is taken from Smirnov.\cite{Smirnov2003} Since we are discussion adiabatic evolution, the probability of each energy eigenstates doesn't change, as the boxes of each energy eigenstates shown in Figure \ref{fig:msw_and_density} doesn't change in size. The extreme dense case shows that matter converts a lot of electron flavor to muon flavor.

\begin{figure}
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/msw_and_density.png}
\caption{Flavor mixing of large vacuum mixing angle from a dense region to vacuum. $n_e^R$ is the resonance density. Yellow bar is the resonance point. In each panel, the upper color bar is for heavier eigen-energy while the lower color bar is for the lower eigen-energy. The first panel is the case of neutrino production in a region that has much larger density than resonance density. Neutrinos are produced as electron flavor in the dense region. Through adiabatic MSW effect, the flavor converts mostly the other. The other two panels shows the case of lower matter density. Figure taken from Smirnov.\cite{Smirnov2003}}
\label{fig:msw_and_density}
\end{figure}



In summary, even though only electron flavor neutrinos are produced in the core of a solar mass star, the neutrino flavor conversion to the other flavors is enhanced by matter interaction, in addition to the vacuum oscillation. However, the actual neutrino flavor conversion is much more complicated than just MSW effect and almost impossible to calculate without knowing the very exact matter profile of the Sun even with the time-dependent small perturbations to the density. As an approximation, MSW transition is good enough for the solar neutrinos.\cite{Lopes2013a} In the case of the sun, the flavor conversion is calculated by Ilídio Lopes and shown in Figure \ref{fig:solar_neutrino_flavor_conversion}.\cite{Lopes2013}

\begin{figure}
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/solar_neutrino_flavor_conversion.png}
\caption{Neutrino flavor conversion of the Sun. Color meaning refer to Figure \ref{fig:solar_neutrino_spectra_flavor_conversion}.\cite{Lopes2013} }
\label{fig:solar_neutrino_flavor_conversion}
\end{figure}



\section{Solar Neutrino Spectrum}


The simplest model for the total neutrino flux generated due to solar nuclear reaction is simple linear superposition of solar neutrino flux from each reactions, since solar neutrinos are not dense enough to have a significant self-interaction. For the total neutrino flux $F$,

\begin{equation}
F(E) = \sum_i F_\alpha (E),
\end{equation}

where ${}_{\alpha}$ stands for flavor and $E$ is the energy of neutrinos. To generate the final solar neutrino spectra, the neutrino energy for each reaction should be examined.

\subsection{Neutrino Spectrum with Thermal and Relativistic Modifications}

For each reaction, the spectral shape of solar neutrinos are mostly spectrum inferred from lab experiments, with modifications of thermal motion and slight modifications from relativistic effect.\cite{Bahcall1991}

In the lab experiments, we only have low energy nuclei and less dens environment, while in the solar core, the temperature is high and the density is large. The first question to ask is whether the neutrino production is modified by a thermal equilibrium environment or it is too fast that no equilibrium can not be maintained by the electromagnetic scattering. The answer is that the neutrino production is in equilibrium which ensures the equilibrium statistics of the neutrino spectra.\cite{Bahcall1991} The two quantities that is related to this problem is the characteristic time of neutrino production and the characteristic electromagnetic scattering. The time scale of electromagnetic scattering is \cite{Bahcall1991}

\begin{equation}
\tau_{EM} \sim 10^{-12} \mathrm{s} \left( \frac{E}{20\mathrm{keV}} \right)^{3/2}\left( \frac{150 \mathrm{g \cdot cm^{-3}} }{\rho} \right),
\end{equation}

where $E$ is the energy of ions which is in a bath of $p$ plasma and $\rho$ is the density of plasma. For the sun, this is of order $10^{-12}\mathrm{s}$. Meanwhile, the time scale of neutrino production $\tau_{\nu}$ is shown in table \ref{tab:neutrino_production_characteristic_time}.


\begin{table}[ht]
\centering
\begin{tabular}{|c|c|}
\hline
 Nuclear Reaction &  $\tau_{\nu}$ \\
 \hline
pp  & $10^{10}$ years \\
$\mathrm{ {}^7Be }$ & $10^{12}$ years \\
$\mathrm{ {}^8B }$ & $1$ second \\
$\mathrm{ {}^{13}N }$ & $10^3$ seconds \\
$\mathrm{ {}^{15}O }$ & $10^2$ seconds \\
$\mathrm{ {}^{17}F }$ & $10^2$ seconds\\
\hline
\end{tabular}
\caption{Neutrino production characteristic time. Reproduced from \cite{Bahcall1991}.}
\label{tab:neutrino_production_characteristic_time}
\end{table}

This huge difference between $\tau_{EM}$ and $\tau_{neutrino}$ keeps the thermal equilibrium of the ions that produces neutrinos.

Therefore we consider the neutrino spectra of all the reactions with thermal motions of the nuclei in a thermal bath. John Bahcall explained thermal corrections to neutrino spectra of beta decay using a simple argument that\cite{Bahcall1991}

\begin{equation}
F(q) dq = \int F_{lab}(q') dq' f(v_z) dv_z,
\end{equation}

where $v_z$ is the velocity that causes the spectrum redshift, i.e., recoil velocity, and the integral should be over $v_z$ not $q'$. $F_{lab}$ is the spectrum in lab experiments. $f(v_z)$ is the corrections due to thermal motion of the nuclei. The relation between $dq$ and $dq'$ is set up using relativistic velocity transformation

\begin{equation}
dq' = ( 1+ v_z ) dq.
\end{equation}

The final result for the spectrum is

\begin{equation}
F(q) = \int_{-\infty}^{v_m} d v_z (1+v_z) F_{lab}f(v_z).
\end{equation}

The upper limit of the integral is given by the cut off of momentum $q'_m$,

\begin{equation}
v_m = 1 - \frac{q}{q'_m},
\end{equation}

where $q'_m$ is given by the $Q$ values of the nuclear reactions. The maximum momentum is limited by the energy released in the reaction.

Since the core temperature is not high enough to make the heavy nuclei relativistic, we expand the spectrum using Taylor expansion and keep only first order,

\begin{equation}
F(q) = F_{lab}(q) (1 + \int_{\infty}^{v_m} f(v_z) dv_z).
\end{equation}

Thus the correction depends on the energy of neutrinos. The correction only plays a role when the energy of neutrino is close to endpoint energy of the beta decay. The energy of the neutrinos will be blue-shifted beyond the beta decay spectrum endpoint in lab experiments. However, the correction is as small as $10^{-6}$ of the lab spectrum in the case of solar core.\cite{Bahcall1991}

The other correction is due to the gravitational redshift. Combining the thermal correction and gravitational redshift, we get the neutrino spectrum that should be observed on the Earth. As an example, John Bahcall calculated the pp reaction spectrum, which is given in Figure \ref{fig:bahcall_pp_nu_spectrum}.


\begin{figure}
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/bahcall_pp_nu_spectrum.png}
\caption{Comparison of pp reaction neutrino spectrum in the lab experiments and predicted solar spectrum.\cite{Bahcall1991} The correction is very small. The picture for this phenomenon is that the endpoint energy is the nuclear reaction energy released plus the thermal energy.}
\label{fig:bahcall_pp_nu_spectrum}
\end{figure}

\subsection{Solar Neutrino Spectra}


This overall spectra are the summation of neutrinos produced at different radius where the temperature and density are different. One of them is the fact that nuclear reactions happen at different rates when the temperature changes. Adelberger et al calculated the stellar energy contribution of pp chain and CN cycle at different temperatures.\cite{Adelberger2011a}

\begin{figure}[!hbtp]
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/pp_chain_vs_cno.png}
\caption{The contribution to the luminosity by pp chain and CNO cycle as a function of temperature.\cite{Adelberger2011a} The black dot is at the solar core temperature. $L_{\odot}$ is solar luminosity. In high mass stars where the temperature is high, CN cycle is the dominant source of energy. Thus for a large mass star we expect the neutrinos from CNO cycle would have a larger flux with respect to neutrinos from pp chain.
}
\label{fig:pp_chain_vs_cno}
\end{figure}

Standard solar model produces a complete set of neutrino spectra from different reactions, which is shown in Figure \ref{fig:solar_neutrino_spectra_flavor_conversion}. The total neutrino spectrum we expect from the sun is the superposition of all the neutrino spectra from different reactions. From Figure \ref{fig:pp_chain_vs_cno} we expect the pp chain neutrino flux is $2\sim 3$ orders of magnitude larger than CNO cycle neutrino flux, which is checked in Figure \ref{fig:solar_neutrino_spectra_flavor_conversion}. Meanwhile, another interesting question to look into is the neutrino production at different radius. Since nuclear reaction rates depend on temperature and density, neutrino flux generated at different radius inside the Sun is very different. A calculation done by Ilídio Lopes shows that most neutrinos are produced at 0.05 radius of the Sun, which is in Figure \ref{fig:solar_neutrino_production_radius}.\cite{Lopes2013}





% \begin{figure}[!hbtp]
% \centering
% \includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/neutrino_spectra.png}
% \caption{Neutrino spectra of the four pp chain and CNO cycle. Units are $\mathrm{cm^{-2} s^{-1} MeV^{-1}}$ for flux and $\mathrm{MeV}$ for neutrino energy.\cite{Stonehill2004}}
% \label{fig:neutrino_spectra}
% \end{figure}



\begin{figure}[!hbtp]
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/solar_neutrino_spectra_flavor_conversion.jpg}
\caption{Solar neutrino spectra with flavor conversion. Solid lines are spectra without flavor conversion while the dashed lines are spectra with flavor conversion. The difference comes from the neutrino mixing. Figure taken from Ilidio Lopes.\cite{Lopes2013,Lopes2013a} The neutrino flavor conversion is calculated using MSW transition.}
\label{fig:solar_neutrino_spectra_flavor_conversion}
\end{figure}





\begin{figure}
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/solar_neutrino_production_radius.png}
\caption{Solar neutrino flux at different radius. Color meaning refer to Figure \ref{fig:solar_neutrino_spectra_flavor_conversion}.}
\label{fig:solar_neutrino_production_radius}
\end{figure}



\section{Supernova Neutrinos and Conclusion}


The solar neutrino spectra is not very different from lab experiments since solar neutrino flux is not high enough to interact with solar medium significantly. However, in a supernova explosion, $10^{58}$ neutrinos are released from the proto-neutron star, which is of radius $10\mathrm{km}$, in a few seconds. The huge number density of neutrinos and large density of matter have a huge effect on the neutrino spectra, especially for different flavors since matter has a huge effect on flavor conversion as we have already seen in MSW effect. The matter effect will be much more than MSW since the violent matter motion. In addition, neutrino neutrino interaction will be efficient because of the high neutrino number density.

Apart from the emission of neutrinos from nuclear reactions of electron capture and positron emission in the solar interior, supernova environment also gives rise to Bremsstrahlung pair neutrino production, electron-positron neutrino pair production, which brings all three flavors and also anti-neutrinos into the spectra. However, even the with the presence of intensive interaction between neutrinos and the leptons and hadrons, which thermalize the neutrinos in the supernova core, the neutrino spectrum escaping from the supernova core is not completely Fermi-Dirac spectrum. Nonetheless, it is possible to parametrize it using nominal Fermi-Dirac distribution,\cite{ysuzuki2004}

\begin{equation}
f(E)\propto \frac{E^2}{1+\exp ( E/kT - \mu )}.
\end{equation}

However, numerical results show that there is a deviation from this Fermi-Dirac distribution.\cite{Totani1998,Keil2003} Keil Mathias and Georg Raffelt showed that it is good enough to approximate the neutrino spectrum from supernova in Monte Carlo simulations using the so called "alpha fit",

\begin{equation}
f(E)\propto E^\alpha \exp\left( -(\alpha+1)\frac{E}{\langle E\rangle} \right),
\end{equation}

where $\langle E\rangle$ is the average energy, or the first moment of energy. The values from Monte Carlo simulations falls into the range $\alpha = 2.5\sim 5$, which clearly shows the spectra are pinched as explained in Figure \ref{fig:neutrino_spectra_sn_simulations}. Detection of deviation from nominal Fermi-Dirac distribution will show evidence of core-collapse information.


\begin{figure}
\centering
\includegraphics[width=\columnwidth]{assets/stars-as-neutrino-factories/neutrino_spectra_sn_simulations.png}
\caption{Alpha fit and nominal Fermi-Dirac fit comparison. The top panel is alpha fit results while the middle panel is from nominal Fermi-Dirac distribution fit. The broadest curve are for $\alpha=2$. The width $w=\sqrt{\langle E^2 \rangle - \langle E\rangle^2}$ decrease 10\% for each curve. The bottom panel is the ratio of the two fit functions.}
\label{fig:neutrino_spectra_sn_simulations}
\end{figure}


In this review, we presented the solar neutrino production, thermal modification, gravitational effect and flavor conversion, which leads to the theoretical predicted solar neutrino spectra for each reaction. Even though we understand solar neutrino well, overall the neutrino spectra of supernova are not so to our complete knowledge. Phenomena such as spectral split due to neutrino-neutrino interaction and matter effect reshape the spectra significantly. Future supernova neutrino observation data is needed to a better understanding of the supernova physics.









Refs & Notes
------------------
