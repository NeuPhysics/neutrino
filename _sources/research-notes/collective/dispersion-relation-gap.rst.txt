Dispersion Relation and Gap
===============================




Discrete Beams
-------------------


I define the following beams,

.. code-block:: Mathematica

   spectDBWC1 = {{1, -0.6}, {1, 0.1}, {1, 0.6}}
   spectDBWC2 = {{0.5, -0.6}, {1, 0.1}, {1, 0.6}}
   spectDBWC3 = {{0.1, -0.6}, {1, 0.1}, {1, 0.6}}

   spectDBC1 = {{-1, -0.6}, {1, 0.1}, {1, 0.6}}
   spectDBC2 = {{-0.5, -0.6}, {1, 0.1}, {1, 0.6}}
   spectDBC3 = {{-0.1, -0.6}, {1, 0.1}, {1, 0.6}}


The first thing is to really see that the instability regions are going through the gap in discrete beams case.

.. figure:: assets/dispersion-relation-gap/lsaMAAROPltDB-WC1-to-WC3.png
   :align: center

   MAA solutions for spectra WC1, WC2, WC3. The instability regions go through the gap.


.. figure:: assets/dispersion-relation-gap/lsaMAAROPltDB-C1-to-C3.png
   :align: center

   MAA solutions for spectra C1, C2, C3. For real :math:`\omega`, no complex k is found.


The MZA+ solution can also be found.

.. figure:: assets/dispersion-relation-gap/lsaMZApROPltDB-WC1-to-WC3.png
   :align: center

   MZA+ solution for WC spectra.


.. figure:: assets/dispersion-relation-gap/lsaMZApROPltDB-C1-to-C3.png
   :align: center

   MZA+ solution for C spectra. As like before, no instability in k is found.

The MZA- solutions:

.. figure:: assets/dispersion-relation-gap/lsaMZAmROPltDB-WC1-to-WC3.png
   :align: center

   MZA- solution for WC spectra.


.. figure:: assets/dispersion-relation-gap/lsaMZAmROPltDB-C1-to-C3.png
   :align: center

   MZA- solution for C spectra.


So the C spectra have no instabilities in k. I should calculate the instabilities in :math:`\omega` for real k.


.. figure:: assets/dispersion-relation-gap/lsaMAARKPltDB-WC1-to-WC3-and-C1-to-C3.png
   :align: center

   MAA solution for real k finding complex :math:`\omega`.


.. figure:: assets/dispersion-relation-gap/lsaMZApRKPltDB-WC1-to-WC3-and-C1-to-C3.png
   :align: center

   MZA+ solution for real k finding complex :math:`\omega`.




.. figure:: assets/dispersion-relation-gap/lsaMZAmRKPltDB-WC1-to-WC3-and-C1-to-C3.png
   :align: center

   MZA- solution for real k finding complex :math:`\omega`.




Two Beams
-------------------------------------


For two beams, the equation :math:`f(\omega,k)=0` is quadratic in both :math:`\omega` and :math:`k`, thus two solutions everywhere even for complex solutions.


.. admonition:: Infinities at Emission Angle
   :class: note

   It has been a very weird thing that the MZA DR lines can cross the forbidden lines defined by the emission angle. To illustrate this problem, we think of a two beams model, with spectrum :math:`\{\{g_1,u_1\},\{g_2,u_2\}\}`.

   The equation for DR has terms of the form

   .. math::
      \frac{1}{1-n u_i},

   which indicates that this can lead to infinity when :math:`n=1/u_i`, unless the numerator is 0. For MAA solution, the numerator indeed becomes 0. But for MZA solution it is not that obvious.

   However, we can prove that one of the MZA solutions is still finite as :math:`n=1/u_i`.

   The MZA solution is

   .. math::
      \omega(n) = -\frac{1}{4} \left(  I_0 - I_2 \pm \sqrt{  (I_0+I_2 - 2I_1)(I_0+I_2 + 2I_1) } \right),

   where

   .. math::
      I_m = \sum g_i \frac{ u_i^m }{1 - m u_i}.

   We are interested in wether the term

   .. math::
      I_0 - I_2 \pm \sqrt{  (I_0+I_2 - 2I_1)(I_0+I_2 + 2I_1) }

   will become finite at :math:`n=1/u_i`. We plug in the expressions for :math:`I_m`.

   .. math::
      &I_0 - I_2 \pm \sqrt{  (I_0+I_2 - 2I_1)(I_0+I_2 + 2I_1) } \\
      =&\sum_i \frac{ g_i(1-u_i^2) }{1-n u_i} \pm \sqrt{ \left( \sum_i \frac{ g_i(u_i-1)^2 }{ 1- nu_i } \right) \left( \sum_i \frac{ g_i(u_i+1)^2 }{ 1- nu_i } \right) } \\
      =& \frac{ g_1 (1-u_1^2)(1-n u_2) + g_2(1-u_2^2)(1-n u_1) }{ (1-n u_1)(1-n u_2) } \pm \sqrt{  \frac{ [ g_1 (1-u_1)^2 (1-n u_2) + g_2 (1-u_2)^2 (1-n u_1) ][ g_1 (1+u_1)^2 (1-n u_2) + g_2 (1+u_2)^2 (1-n u_1) ] }{ (1-n u_1)^2(1-n u_2)^2 } }.

   We take the limit :math:`n\to 1/u_i`.

   .. math::
      &I_0 - I_2 \pm \sqrt{  (I_0+I_2 - 2I_1)(I_0+I_2 + 2I_1) } \\
      =& \frac{ g_1(1-u_1^2) }{ 1- n u_1 } \pm  \left\lvert \frac{ g_1(1-u_1^2)  }{  1 - n u_1  } \right\rvert.

   One of the solutions, + or -, will be 0, depending on spectrum and also which side we are approaching the limit.

   Suppose we have :math:`g_1>0` and :math:`n\to 1/u_1 +` (:math:`1-n u_1<0`).

   .. math::
      \omega(n) = \frac{ g_1(1-u_1^2) }{ 1- n u_1 } \pm  \left(  - \frac{ g_1(1-u_1^2)  }{  1 - n u_1  }  \right),

   so that the MZA+ solution is 0.


Solutions
-----------------------------------

It seems that gap and instability are not really related all the time. For discrete beams, the number of solutions is the key to instabilities.

It shows that spectrum :math:`DBC1` has only MZA+ instabilities on the left side of the axis for real k. We need to prove that no solutions are found on the left side of the axis. Similarly for MZA- solutions but on different sides.


Discrete Beams
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MAA
``````````````````````

For ``spectDBWC1`` we have the following density plots of :math:`f(\omega=0.1,k)`, :math:`f(\omega=0.5,k)`, and :math:`f(\omega=1.5,k)` respectively.

.. image:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-maa-spectdbwc1.png
   :width: 32%

.. image:: assets/dispersion-relation-gap/f-of-omega-0.5-and-k-densityplot-log-maa-spectdbwc1.png
   :width: 32%

.. image:: assets/dispersion-relation-gap/f-of-omega-1.5-and-k-densityplot-log-maa-spectdbwc1.png
   :width: 32%


Similar plots are made for ``spectDBC1`` which has no MAA instabilities.


.. image:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-maa-spectdbc1.png
   :width: 32%


.. image:: assets/dispersion-relation-gap/f-of-omega-0.5-and-k-densityplot-log-maa-spectdbc1.png
   :width: 32%


.. image:: assets/dispersion-relation-gap/f-of-omega-1.5-and-k-densityplot-log-maa-spectdbc1.png
   :width: 32%

MZA
``````````````````````


I can also plot out the MZA solutions.

.. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-mzap-mazm-spectdbwc1.png
   :align: center

   MZA solutions (MZA+ left, MZA- right) for ``spectDBWC1`` with :math:`\omega=0.1`. The MZA+ plot on the left seems to be weird. I checked the values within this region. There is a plateau here but not exactly flat. And they are not approaching 0. The other real solution in MZA- solution which is not shown is pretty far away from these two complex solutions.


A closer look at the MZA- solutions are showed below.

.. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-mazm-spectdbwc1-2.png
   :align: center

   MZA- solutions for ``spectDBWC1`` at a closer look at the 0 points. The white bands are regions slightly larger than 0. ``Log@Abs@DBAxialSymOmegaNMZApEqnLHSComplex[0.1, -0.1826 - 0*I, spectDBWC1]`` returns ``0.475377``.

.. admonition:: Check Values at Plateau
   :class: toggle

   .. code-block:: Mathematica

      In[162]:= Log@Abs@DBAxialSymOmegaNMZApEqnLHSComplex[0.1, 1.6 - 1*I, spectDBWC1]
      Log@Abs@DBAxialSymOmegaNMZApEqnLHSComplex[0.1, 1.2 - 1*I, spectDBWC1]

      Out[162]= -2.46077
      Out[163]= -2.49663

   A sharp transition occurs at the white boundry. The values near the boundary change abruptly. According to the values :math:`f(\omega=0.1,k)`, imaginary part of it appears and becomes large as we move from left to right around the boundary.

   .. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-mzap-spectwc1-at-step-structure.png
      :align: center

      LogPlot of :math:`|f(\omega=0.1,k=kreal-0.8386*I)|` for :math:`kreal\in [1.052, 1.0535]`. This region of plot goes across the step structure.

   .. code-block:: Mathematica


      LogPlot[Abs@DBAxialSymOmegaNMZApEqnLHSComplex[0.1, kreal - 0.8386*I,  spectDBWC1], {kreal, 1.052, 1.0535}, Frame -> True, PlotLabel -> "|f(\[Omega]=0.1,k=kreal-0.8386*I)| for spectDBWC1"]


For :math:`\omega=-0.5`.




.. figure:: assets/dispersion-relation-gap/f-of-omega-m0.5-and-k-densityplot-log-mzap-mazm-spectdbwc1.png
   :align: center

   MZA solutions (MZA+ left, MZA- right) for ``spectDBWC1`` with :math:`\omega=-0.5`.

.. figure:: assets/dispersion-relation-gap/f-of-omega-m0.5-and-k-densityplot-log-mazm-spectdbwc1-2.png
   :align: center

   MZA- solution around the real solution. ``Log@Abs@DBAxialSymOmegaNMZApEqnLHSComplex[-0.5, -1.99 - 0*I, spectDBWC1]`` returns ``-5.18447`` which indicates a 0 point.





Box Spectra
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-maa-spectwc3.png
   :align: center

   MAA ``spectWC3`` for :math:`\omega=0.1`. We have points or regions approaching :math:`f(\omega=0.1,k)\to 0`.




f-of-omega-m0.1-and-k-densityplot-log-maa-spectwc3.png



.. figure:: assets/dispersion-relation-gap/f-of-omega-m0.1-and-k-densityplot-log-maa-spectwc3.png
   :align: center

   MAA ``spectWC3`` for :math:`\omega=-0.1`. How do I determine whether it is approaching 0? I change the plot range and checked. :math:`e^{-2.3}` seems to be the smallest value.





.. figure:: assets/dispersion-relation-gap/f-of-omega-1-and-k-densityplot-log-maa-spectwc3.png
   :align: center

   MAA ``spectWC3`` for :math:`\omega=1`. It seems that the solutions to k are real.



Similar plots are made for ``spectWC4``.

.. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-maa-spectwc4.png
   :align: center

   MAA ``spectWC4`` for :math:`\omega=0.1`.



.. figure:: assets/dispersion-relation-gap/f-of-omega-m0.1-and-k-densityplot-log-maa-spectwc4.png
   :align: center

   MAA ``spectWC4`` for :math:`\omega=-0.1`.





.. figure:: assets/dispersion-relation-gap/f-of-omega-1-and-k-densityplot-log-maa-spectwc4.png
   :align: center

   MAA ``spectWC4`` for :math:`\omega=-0.1`.






.. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-maa-spectc1.png
   :align: center

   MAA ``spectC1`` for :math:`\omega=0.1`.




.. figure:: assets/dispersion-relation-gap/f-of-omega-m0.1-and-k-densityplot-log-maa-spectc1.png
   :align: center

   MAA ``spectC1`` for :math:`\omega=-0.1`.






.. figure:: assets/dispersion-relation-gap/f-of-omega-1-and-k-densityplot-log-maa-spectc1.png
   :align: center

   MAA ``spectC1`` for :math:`\omega=1`.





.. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-mzap-mzam-boxspectrum-spectwc3.png
   :align: center

   MZA ``spectWC3`` for :math:`\omega=0.1`.


.. figure:: assets/dispersion-relation-gap/f-of-omega-m0.1-and-k-densityplot-log-mzap-mzam-spectwc3.png
   :align: center

   MZA solution ``spectWC3`` for :math:`\omega=-0.1`.



.. figure:: assets/dispersion-relation-gap/f-of-omega-0.05-and-k-densityplot-log-mzap-mzam-spectwc3.png
   :align: center

   MZA solutions ``spectWC3`` for :math:`\omega=0.05`.




.. figure:: assets/dispersion-relation-gap/f-of-omega-0.05-and-k-densityplot-log-mzap-mzam-spectwc3-check-point.png
   :align: center

   MZA+ solution ``spectWC3`` for :math:`\omega=0.05` for a small range of :math:`k`. I chose only real :math:`k`.





.. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-mzap-mzam-spectwc4.png
   :align: center

   MZA solution ``spectWC4`` for :math:`\omega=0.1`.



.. figure:: assets/dispersion-relation-gap/f-of-omega-m0.1-and-k-densityplot-log-mzap-mzam-spectwc4.png
   :align: center

   MZA solution ``spectWC4`` for :math:`\omega=-0.1`.




.. figure:: assets/dispersion-relation-gap/f-of-omega-0.05-and-k-densityplot-log-mzap-mzam-spectwc4.png
   :align: center

   MZA solution ``spectWC4`` for :math:`\omega=0.05`.


.. admonition:: Questions about MZA Solutions
   :class: warning

   The results are weird. For ``spectWC3`` and ``spectWC4``, no real solutions are found in DR for :math:`\omega=0.05`. However, here we found one real solution for :math:`k`, which is not 0.


MZA solutions for spectra with crossing are shown below.

.. figure:: assets/dispersion-relation-gap/f-of-omega-0.1-and-k-densityplot-log-mzap-mzam-spectc1.png
   :align: center

   MZA solutions for ``spectC1`` with :math:`\omega=0.1`



.. figure:: assets/dispersion-relation-gap/f-of-omega-m0.1-and-k-densityplot-log-mzap-mzam-spectc1.png
   :align: center

   MZA solutions for ``spectC1`` with :math:`\omega=-0.1`




.. figure:: assets/dispersion-relation-gap/f-of-omega-1-and-k-densityplot-log-mzap-mzam-spectc1.png
   :align: center

   MZA solutions for ``spectC1`` with :math:`\omega=1`. We found one real solution for MZA- solution.



.. figure:: assets/dispersion-relation-gap/f-of-omega-m1-and-k-densityplot-log-mzap-mzam-spectc1.png
   :align: center

   MZA solutions for ``spectC1`` with :math:`\omega=-1`. We found one real solution for MZA+ solution.


Instability Regions Stop at Axis :math:`\omega=0` or :math:`k=0`
--------------------------------------------------------------------------------------


.. admonition:: Question about MZA solutions
   :class: warning

   It seems that we should Taylor expand around :math:`omega=0` for MZA/MAA solutions to see what actually is happening. We can expand the :math:`I_m`'s around small real :math:`\omega`, then perform the integral.

.. admonition:: Can I do Taylor Expansion?
   :class: toggle

   For discrete beams, we determine :math:`k` using first order expansion of :math:`I_m` at :math:`\omega\sim 0`.

   **We first look at MAA solution.**


   For generality we do not distingush between discrete beams and continuous beams. Instead, we define moments of spectrum to be

   .. math::
      G_m = \begin{cases}
      \sum g_i u_i^m, &\qquad \text{for discrete beams}\\
      \int G(u) u^m du, &\qquad \text{for continuous spectrum}\\
      \end{cases}.


   For MAA solutions, the equations we are interested in are

   .. math::
      4 = \bar I_0 - \bar I_2,
      :label: eqn-maa-bar-eqn

   where

   .. math::
      \bar I_m = \begin{cases}
      \sum g_i \frac{u_i^m}{\omega - u_i k} , &\qquad \text{for discrete beams}\\
      \int G(u) \frac{u^m}{\omega - u k} du, &\qquad \text{for continuous spectrum}\\
      \end{cases}.

   We perform Taylor expansion on :math:`\frac{u^m}{\omega - k u}`.

   .. math::
      \frac{u^m}{\omega - k u}  = -\frac{u^{m-1}}{k} - \omega \frac{u^{m-2}}{k^2} + \mathscr{O}(\omega^2).

   Eqn. :eq:`eqn-maa-bar-eqn` is simplified to

   .. math::
      4 k^2 + k (G_{-1}-G_1) + \omega ( G_{-2}-G_0 )=0.

   by dropping high orders. We are looking for solutions to this equation which is determined by the discriminant :math:`\Delta`.

   .. math::
      \Delta = (G_{-1}-G_1)^2 - 16 \omega ( G_{-2}-G_0 ).

   The first term :math:`(G_{-1}-G_1)^2` is non-negative. I can tell that :math:`\omega` plays a rule here. The question is how to quantify it.

   Analatyically I could discuss the region of positive or negative :math:`\Delta`, i.e., real or imaginary solutions. But this is not simply determined by the sign of :math:`\omega`.

   1. :math:`( G_{-2}-G_0 )>0`, :math:`\Delta<0` requires :math:`\omega>\frac{ ( (G_{-1}-G_1)^2 }{ 16( G_{-2}-G_0 ) }`;
   2. :math:`( G_{-2}-G_0 )<0`, :math:`\Delta<0` requires :math:`\omega<\frac{ ( (G_{-1}-G_1)^2 }{ 16( G_{-2}-G_0 ) }`;


   This is no really helpful and not correct.


From numerical calculations, we observe that :math:`\omega/k\to 0`, as :math:`\omega\to 0`. Thus we expect that

.. math::
   &4 =& \bar I_0 - \bar I_2  \\
   \Rightarrow &4 =& \int G(u) \frac{1-u^2}{\omega - k u} du \\
   \Rightarrow &4 =& \frac{1}{k} \int G(u) \frac{ 1 - u^2 }{ \omega/k - u } .

We investigate the behavior this solution around :math:`\omega\to 0` so that the MAA solution simplifies to

.. math::
   4 = \frac{1}{k} \left( \mathscr P \int G(u) \frac{ 1 - u^2 }{  - u } - i \pi \operatorname{Sign}\left( \frac{-\omega \operatorname{Im}(k)}{\lvert k \rvert}  \right) G(0)  \right).

We write down the real and imaginary part of the equation

.. math::
   k_R =& \frac{1}{4}\left(  \mathscr P \int G(u) \frac{ 1 - u^2 }{  - u }  \right) \\
   k_I = & \frac{1}{4}  \pi \operatorname{Sign}\left( \frac{\omega \operatorname{Im}(k)}{\lvert k \rvert}  \right) G(0) \\
   =& \frac{1}{4}  \pi \operatorname{Sign}\left( \omega \right) \operatorname{Sign}\left(  \operatorname{Im}(k)  \right) G(0) \\
   =& \frac{\pi}{4}G(0) \operatorname{Sign}\left( \omega \right) \operatorname{Sign}\left(  \operatorname{Im}(k)  \right) ,

where :math:`k = k_R + i k_I`. We are interested in imaginary part of :math:`k` since it dertermines the instability. We rewrite the equation,

.. math::
   \lvert k_I \rvert  =  \frac{\pi}{4}G(0) \operatorname{Sign}\left( \omega \right).

If :math:`G(0)` is positive, we should have :math:`\omega>0` to really have instabilities. And the value of imaginary part of :math:`k` is fixed to :math:`\frac{G(0) \pi}{4}` which is :math:`0.78` if :math:`G(0)`


.. admonition:: MZA Solutions
   :class: warning

   For MZA solutions, I tried but it seems to be complicated. Neverthless I have the form of solutions. Need more thinking.


For MZA solutions, we have the equation

.. math::
   (\bar I_0 - \bar I_2 + 4)^2 = (\bar I_0 +\bar I_2 + 2 \bar I_1)(\bar I_0 +\bar I_2 - 2 \bar I_1).

We calculate each terms at the limit :math:`\omega/k \to 0`.

.. math::
   \bar I_0 - \bar I_2 = & \frac{1}{k}\left(  -\mathscr P \int \frac{G(u)}{u} du + i \pi \operatorname{Sign}(\omega k_I)G(0) + \int G(u) u du \right) \\
   \bar I_0 + \bar I_2 \pm 2 I_1 = & \frac{1}{k}\left(  -\mathscr P \int \frac{G(u)}{u} du + i \pi \operatorname{Sign}(\omega k_I)G(0) - \int G(u) u du \mp 2\int G(u) du  \right).

:math:`1/k` could be elimited on both sides. We define

.. math::
   A_R = & 4 k_R  -\mathscr P \int \frac{G(u)}{u} du + \int G(u) u du \\
   A_I =&  4 k_I + \pi \operatorname{Sign}(\omega k_I)G(0) \\
   B_R =& -\mathscr P \int \frac{G(u)}{u} du - \int G(u) u du - 2\int G(u) du  \\
   B_I =& \pi \operatorname{Sign}(\omega k_I)G(0) \\
   C_R =& -\mathscr P \int \frac{G(u)}{u} du - \int G(u) u du + 2\int G(u) du  \\
   C_I =& = B_I = \pi \operatorname{Sign}(\omega k_I)G(0) .

Then the equation could be rewitten as

.. math::
   (A_R + i A_I)^2 = (B_R+i B_I) (C_R + i C_I).

We seperate the imaginary part of the equation.

.. math::
   2 A_R A_I = B_R C_I + B_I C_R,

which is in fact

.. math::
   2 A_R 4 k_I + 2 A_R \pi G(0) \operatorname{Sign}(\omega k_I) = \pi G(0)\operatorname{Sign}(\omega k_I) 2 \left( -\mathscr P \int \frac{G(u)}{u} du - \int G(u) u du \right).

We solve :math:`k_I`.

.. math::
   k_I = - \frac{1}{4} \pi G(0) \operatorname{Sign}(\omega k_I) \left(  1 + \frac{ \mathscr P \int \frac{G(u)}{u} du + \int G(u) u du }{ 4k_R - \mathscr P \int \frac{G(u)}{u} du + \int G(u) u du }  \right).


.. admonition:: Problems?
   :class: warning

   1. In principle we could solve :math:`k_R` and :math:`k_I` by combining both the real and imaginary part. However, the real part of the equation is quadratic in k.
   2. I have the sign of :math:`\omega` consistant with LSA for several spectra. But the numerical values are not exactly matching.
   3. The problem of MZA- solutions becomes much more serious now.




References and Notes
-----------------------------
